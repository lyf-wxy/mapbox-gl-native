package com.mapbox.mapboxsdk.testapp.activity.fragment;

import android.app.FragmentTransaction;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;

import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.camera.CameraUpdateFactory;
import com.mapbox.mapboxsdk.constants.Style;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.maps.MapFragment;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.MapboxMapOptions;
import com.mapbox.mapboxsdk.maps.OnMapReadyCallback;
import com.mapbox.mapboxsdk.testapp.R;

public class MapFragmentActivity extends AppCompatActivity implements OnMapReadyCallback {

  private MapboxMap mapboxMap;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_map_fragment);

    Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
    setSupportActionBar(toolbar);

    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null) {
      actionBar.setDisplayHomeAsUpEnabled(true);
      actionBar.setDisplayShowHomeEnabled(true);
    }

    MapFragment mapFragment;
    if (savedInstanceState == null) {
      final FragmentTransaction transaction = getFragmentManager().beginTransaction();

      MapboxMapOptions options = new MapboxMapOptions();
      options.styleUrl(Style.OUTDOORS);

      options.scrollGesturesEnabled(false);
      options.zoomGesturesEnabled(false);
      options.tiltGesturesEnabled(false);
      options.rotateGesturesEnabled(false);

      options.debugActive(false);

      LatLng dc = new LatLng(38.90252, -77.02291);

      options.minZoomPreference(9);
      options.maxZoomPreference(11);
      options.camera(new CameraPosition.Builder()
        .target(dc)
        .zoom(11)
        .build());

      mapFragment = MapFragment.newInstance(options);

      transaction.add(R.id.fragment_container, mapFragment, "com.mapbox.map");
      transaction.commit();
    } else {
      mapFragment = (MapFragment) getFragmentManager().findFragmentByTag("com.mapbox.map");
    }

    mapFragment.getMapAsync(this);
  }

  @Override
  public void onMapReady(MapboxMap map) {
    mapboxMap = map;
    mapboxMap.animateCamera(
      CameraUpdateFactory.newCameraPosition(new CameraPosition.Builder().tilt(45.0).build()), 10000);
  }

  @Override
  public boolean onOptionsItemSelected(MenuItem item) {
    switch (item.getItemId()) {
      case android.R.id.home:
        onBackPressed();
        return true;
      default:
        return super.onOptionsItemSelected(item);
    }
  }
}
