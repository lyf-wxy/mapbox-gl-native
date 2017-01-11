package com.mapbox.mapboxsdk.maps.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;

import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.maps.Projection;
import com.mapbox.mapboxsdk.maps.UiSettings;

/**
 * UI element overlaid on a map to show the map scale.
 */

public final class ScaleView extends TextView {
    double zoomLevel;
    float width = 0.24f;
    UiSettings.ScaleUnit scaleUnit = UiSettings.ScaleUnit.KM;
    int color;
    private FrameLayout.LayoutParams layoutParams;

    public ScaleView(Context context) {
        super(context);
        initialize();
    }

    public ScaleView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initialize();
    }

    public ScaleView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initialize();
    }

    private void initialize() {
        setBackgroundResource(R.drawable.bg_scale_black);
        setGravity(Gravity.CENTER_HORIZONTAL | Gravity.BOTTOM);
    }

    public void setWidth(float width) {
        this.width = width;
    }

    public void setScaleUnit(UiSettings.ScaleUnit scaleUnit) {
        this.scaleUnit = scaleUnit;
    }

    public void setColor(int color) {
        this.color=color;
        switch (color) {
            case MapboxConstants.SCALE_COLOR_BLACK:
                setBackgroundResource(R.drawable.bg_scale_black);
                setTextColor(Color.BLACK);
                break;

            case MapboxConstants.SCALE_COLOR_WHITE:
                setBackgroundResource(R.drawable.bg_scale_white);
                setTextColor(Color.WHITE);
                break;
        }
    }


    @Override
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        setVisibility(enabled ? VISIBLE : INVISIBLE);
    }

    @Override
    public void setLayoutParams(ViewGroup.LayoutParams params) {
        super.setLayoutParams(params);
        layoutParams = (FrameLayout.LayoutParams) params;
    }

    public UiSettings.ScaleUnit getScaleUnit() {
        return scaleUnit;
    }

    public int getScaleColor() {
        return color;
    }

    public void update(Projection projection) {
        LatLngBounds bounds = projection.getVisibleRegion().latLngBounds;
        double metersPerPixel;
        if ((layoutParams.gravity & Gravity.VERTICAL_GRAVITY_MASK) == Gravity.TOP)
            metersPerPixel = projection.getMetersPerPixelAtLatitude(bounds.getLatNorth());
        else if ((layoutParams.gravity & Gravity.VERTICAL_GRAVITY_MASK) == Gravity.BOTTOM)
            metersPerPixel = projection.getMetersPerPixelAtLatitude(bounds.getLatSouth());
        else
            metersPerPixel = projection.getMetersPerPixelAtLatitude((bounds.getLatSouth() + bounds.getLatNorth()) / 2);

        Resources resources = getResources();
        DisplayMetrics dm = resources.getDisplayMetrics();
//        float density1 = dm.density;
//        int width3 = dm.widthPixels;
//        int height3 = dm.heightPixels;
        int parentWidth = dm.widthPixels;
        float totalWidth = (float) (parentWidth * metersPerPixel / scaleUnit.ratio);
        float tempStep = totalWidth * width;
        float maxWidth = dm.widthPixels;

        float y = dm.heightPixels / 2;

        LatLng latLng1 = projection.fromScreenLocation(new PointF(0, y));
        LatLng latLng2 = projection.fromScreenLocation(new PointF(maxWidth, y));

        double maxMeters = getDistance(latLng1, latLng2);

        double distance = getRoundNum(maxMeters);
        double ratio = distance / maxMeters;

        if (distance < 1000) {
            setText("ZoomLevel: "+zoomLevel+"\n"+(int) Math.floor(distance) + UiSettings.ScaleUnit.MILE.unit);
        } else {
            setText("ZoomLevel: "+zoomLevel+"\n"+(int) Math.floor(distance / 1000) + UiSettings.ScaleUnit.KM.unit);
        }

        layoutParams.width = Math.round(parentWidth * tempStep / (totalWidth));
       /* if(digits>1){
            setText((int)Math.floor(length*1000) + UiSettings.ScaleUnit.MILE.unit);
        }else {
            setText((int)Math.floor(length)+scaleUnit.unit);
        }*/
        // set the total width to the appropriate fraction of the display
        setLayoutParams(layoutParams);
        invalidate();

    }

    private double getDistance(LatLng latLng1, LatLng latLng2) {
        // Uses spherical law of cosines approximation.
        int R = 6371137;

        double rad = Math.PI / 180;
        double lat1 = latLng1.getLatitude() * rad;
        double lat2 = latLng2.getLatitude() * rad;
        double a = Math.sin(lat1) * Math.sin(lat2) + Math.cos(lat1) * Math.cos(lat2) * Math.cos((latLng2.getLongitude() - latLng1.getLongitude()) * rad);

        double maxMeters = R * Math.acos(Math.min(a, 1));
        return maxMeters;
    }

    private double getRoundNum(double num) {
        double pow10 = Math.pow(10, (("" + (int) (Math.floor(num))).trim().length() - 1));
        double d = num / pow10;

        d = d >= 10 ? 10 :
                d >= 5 ? 5 :
                        d >= 3 ? 3 :
                                d >= 2 ? 2 : 1;

        return pow10 * d;
    }

    public void setZoomLevel(double zoomLevel){
        this.zoomLevel=zoomLevel;
    }
}