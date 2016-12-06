TARGET = qmapboxgl

TEMPLATE = lib

QT += location network opengl qml

CONFIG += c++14 exceptions rtti static build_all

# Core Mapbox GL
SOURCES += \
    ../../src/clipper/clipper.cpp \
    ../../src/csscolorparser/csscolorparser.cpp \
    ../../src/mbgl/actor/mailbox.cpp \
    ../../src/mbgl/algorithm/generate_clip_ids.cpp \
    ../../src/mbgl/annotation/annotation_manager.cpp \
    ../../src/mbgl/annotation/annotation_source.cpp \
    ../../src/mbgl/annotation/annotation_tile.cpp \
    ../../src/mbgl/annotation/fill_annotation_impl.cpp \
    ../../src/mbgl/annotation/line_annotation_impl.cpp \
    ../../src/mbgl/annotation/shape_annotation_impl.cpp \
    ../../src/mbgl/annotation/style_sourced_annotation_impl.cpp \
    ../../src/mbgl/annotation/symbol_annotation_impl.cpp \
    ../../src/mbgl/geometry/feature_index.cpp \
    ../../src/mbgl/geometry/line_atlas.cpp \
    ../../src/mbgl/gl/attribute.cpp \
    ../../src/mbgl/gl/color_mode.cpp \
    ../../src/mbgl/gl/context.cpp \
    ../../src/mbgl/gl/debugging.cpp \
    ../../src/mbgl/gl/depth_mode.cpp \
    ../../src/mbgl/gl/extension.cpp \
    ../../src/mbgl/gl/gl.cpp \
    ../../src/mbgl/gl/object.cpp \
    ../../src/mbgl/gl/stencil_mode.cpp \
    ../../src/mbgl/gl/uniform.cpp \
    ../../src/mbgl/gl/value.cpp \
    ../../src/mbgl/gl/vertex_array.cpp \
    ../../src/mbgl/layout/clip_lines.cpp \
    ../../src/mbgl/layout/merge_lines.cpp \
    ../../src/mbgl/layout/symbol_instance.cpp \
    ../../src/mbgl/layout/symbol_layout.cpp \
    ../../src/mbgl/map/backend.cpp \
    ../../src/mbgl/map/map.cpp \
    ../../src/mbgl/map/transform.cpp \
    ../../src/mbgl/map/transform_state.cpp \
    ../../src/mbgl/math/log2.cpp \
    ../../src/mbgl/programs/circle_program.cpp \
    ../../src/mbgl/programs/collision_box_program.cpp \
    ../../src/mbgl/programs/fill_program.cpp \
    ../../src/mbgl/programs/line_program.cpp \
    ../../src/mbgl/programs/raster_program.cpp \
    ../../src/mbgl/programs/symbol_program.cpp \
    ../../src/mbgl/renderer/circle_bucket.cpp \
    ../../src/mbgl/renderer/debug_bucket.cpp \
    ../../src/mbgl/renderer/fill_bucket.cpp \
    ../../src/mbgl/renderer/frame_history.cpp \
    ../../src/mbgl/renderer/line_bucket.cpp \
    ../../src/mbgl/renderer/painter.cpp \
    ../../src/mbgl/renderer/painter_background.cpp \
    ../../src/mbgl/renderer/painter_circle.cpp \
    ../../src/mbgl/renderer/painter_clipping.cpp \
    ../../src/mbgl/renderer/painter_debug.cpp \
    ../../src/mbgl/renderer/painter_fill.cpp \
    ../../src/mbgl/renderer/painter_line.cpp \
    ../../src/mbgl/renderer/painter_raster.cpp \
    ../../src/mbgl/renderer/painter_symbol.cpp \
    ../../src/mbgl/renderer/raster_bucket.cpp \
    ../../src/mbgl/renderer/render_tile.cpp \
    ../../src/mbgl/renderer/symbol_bucket.cpp \
    ../../src/mbgl/sprite/sprite_atlas.cpp \
    ../../src/mbgl/sprite/sprite_image.cpp \
    ../../src/mbgl/sprite/sprite_parser.cpp \
    ../../src/mbgl/storage/network_status.cpp \
    ../../src/mbgl/storage/resource.cpp \
    ../../src/mbgl/storage/response.cpp \
    ../../src/mbgl/style/bucket_parameters.cpp \
    ../../src/mbgl/style/class_dictionary.cpp \
    ../../src/mbgl/style/cross_faded_property_evaluator.cpp \
    ../../src/mbgl/style/function.cpp \
    ../../src/mbgl/style/layer.cpp \
    ../../src/mbgl/style/layer_impl.cpp \
    ../../src/mbgl/style/layers/background_layer.cpp \
    ../../src/mbgl/style/layers/background_layer_impl.cpp \
    ../../src/mbgl/style/layers/background_layer_properties.cpp \
    ../../src/mbgl/style/layers/circle_layer.cpp \
    ../../src/mbgl/style/layers/circle_layer_impl.cpp \
    ../../src/mbgl/style/layers/circle_layer_properties.cpp \
    ../../src/mbgl/style/layers/custom_layer.cpp \
    ../../src/mbgl/style/layers/custom_layer_impl.cpp \
    ../../src/mbgl/style/layers/fill_extrusion_layer.cpp \
    ../../src/mbgl/style/layers/fill_extrusion_layer_impl.cpp \
    ../../src/mbgl/style/layers/fill_extrusion_layer_properties.cpp \
    ../../src/mbgl/style/layers/fill_layer.cpp \
    ../../src/mbgl/style/layers/fill_layer_impl.cpp \
    ../../src/mbgl/style/layers/fill_layer_properties.cpp \
    ../../src/mbgl/style/layers/line_layer.cpp \
    ../../src/mbgl/style/layers/line_layer_impl.cpp \
    ../../src/mbgl/style/layers/line_layer_properties.cpp \
    ../../src/mbgl/style/layers/raster_layer.cpp \
    ../../src/mbgl/style/layers/raster_layer_impl.cpp \
    ../../src/mbgl/style/layers/raster_layer_properties.cpp \
    ../../src/mbgl/style/layers/symbol_layer.cpp \
    ../../src/mbgl/style/layers/symbol_layer_impl.cpp \
    ../../src/mbgl/style/layers/symbol_layer_properties.cpp \
    ../../src/mbgl/style/parser.cpp \
    ../../src/mbgl/style/property_parsing.cpp \
    ../../src/mbgl/style/source.cpp \
    ../../src/mbgl/style/source_impl.cpp \
    ../../src/mbgl/style/sources/geojson_source.cpp \
    ../../src/mbgl/style/sources/geojson_source_impl.cpp \
    ../../src/mbgl/style/sources/raster_source.cpp \
    ../../src/mbgl/style/sources/raster_source_impl.cpp \
    ../../src/mbgl/style/sources/vector_source.cpp \
    ../../src/mbgl/style/sources/vector_source_impl.cpp \
    ../../src/mbgl/style/style.cpp \
    ../../src/mbgl/style/tile_source_impl.cpp \
    ../../src/mbgl/style/types.cpp \
    ../../src/mbgl/text/check_max_angle.cpp \
    ../../src/mbgl/text/collision_feature.cpp \
    ../../src/mbgl/text/collision_tile.cpp \
    ../../src/mbgl/text/get_anchors.cpp \
    ../../src/mbgl/text/glyph.cpp \
    ../../src/mbgl/text/glyph_atlas.cpp \
    ../../src/mbgl/text/glyph_pbf.cpp \
    ../../src/mbgl/text/glyph_set.cpp \
    ../../src/mbgl/text/quads.cpp \
    ../../src/mbgl/text/shaping.cpp \
    ../../src/mbgl/tile/geojson_tile.cpp \
    ../../src/mbgl/tile/geometry_tile.cpp \
    ../../src/mbgl/tile/geometry_tile_data.cpp \
    ../../src/mbgl/tile/geometry_tile_worker.cpp \
    ../../src/mbgl/tile/raster_tile.cpp \
    ../../src/mbgl/tile/raster_tile_worker.cpp \
    ../../src/mbgl/tile/tile.cpp \
    ../../src/mbgl/tile/tile_cache.cpp \
    ../../src/mbgl/tile/tile_id_io.cpp \
    ../../src/mbgl/tile/vector_tile.cpp \
    ../../src/mbgl/util/chrono.cpp \
    ../../src/mbgl/util/clip_id.cpp \
    ../../src/mbgl/util/color.cpp \
    ../../src/mbgl/util/compression.cpp \
    ../../src/mbgl/util/constants.cpp \
    ../../src/mbgl/util/convert.cpp \
    ../../src/mbgl/util/dtoa.cpp \
    ../../src/mbgl/util/event.cpp \
    ../../src/mbgl/util/font_stack.cpp \
    ../../src/mbgl/util/geo.cpp \
    ../../src/mbgl/util/geojson.cpp \
    ../../src/mbgl/util/grid_index.cpp \
    ../../src/mbgl/util/http_header.cpp \
    ../../src/mbgl/util/http_timeout.cpp \
    ../../src/mbgl/util/i18n.cpp \
    ../../src/mbgl/util/intersection_tests.cpp \
    ../../src/mbgl/util/io.cpp \
    ../../src/mbgl/util/logging.cpp \
    ../../src/mbgl/util/mapbox.cpp \
    ../../src/mbgl/util/mat2.cpp \
    ../../src/mbgl/util/mat3.cpp \
    ../../src/mbgl/util/mat4.cpp \
    ../../src/mbgl/util/offscreen_texture.cpp \
    ../../src/mbgl/util/premultiply.cpp \
    ../../src/mbgl/util/stopwatch.cpp \
    ../../src/mbgl/util/thread_context.cpp \
    ../../src/mbgl/util/tile_cover.cpp \
    ../../src/mbgl/util/url.cpp \
    ../../src/mbgl/util/version_info.cpp \
    ../../src/mbgl/util/work_queue.cpp \
    ../../src/mbgl/util/work_request.cpp \
    ../../src/parsedate/parsedate.c

PRIVATE_HEADERS += \
    ../../src/clipper/clipper.hpp \
    ../../src/csscolorparser/csscolorparser.hpp \
    ../../src/mbgl/actor/actor.hpp \
    ../../src/mbgl/actor/actor_ref.hpp \
    ../../src/mbgl/actor/mailbox.hpp \
    ../../src/mbgl/actor/message.hpp \
    ../../src/mbgl/actor/scheduler.hpp \
    ../../src/mbgl/algorithm/covered_by_children.hpp \
    ../../src/mbgl/algorithm/generate_clip_ids.hpp \
    ../../src/mbgl/algorithm/generate_clip_ids_impl.hpp \
    ../../src/mbgl/algorithm/update_renderables.hpp \
    ../../src/mbgl/annotation/annotation_manager.hpp \
    ../../src/mbgl/annotation/annotation_source.hpp \
    ../../src/mbgl/annotation/annotation_tile.hpp \
    ../../src/mbgl/annotation/fill_annotation_impl.hpp \
    ../../src/mbgl/annotation/line_annotation_impl.hpp \
    ../../src/mbgl/annotation/shape_annotation_impl.hpp \
    ../../src/mbgl/annotation/style_sourced_annotation_impl.hpp \
    ../../src/mbgl/annotation/symbol_annotation_impl.hpp \
    ../../src/mbgl/geometry/anchor.hpp \
    ../../src/mbgl/geometry/binpack.hpp \
    ../../src/mbgl/geometry/debug_font_data.hpp \
    ../../src/mbgl/geometry/feature_index.hpp \
    ../../src/mbgl/geometry/line_atlas.hpp \
    ../../src/mbgl/gl/attribute.hpp \
    ../../src/mbgl/gl/color_mode.hpp \
    ../../src/mbgl/gl/context.hpp \
    ../../src/mbgl/gl/debugging.hpp \
    ../../src/mbgl/gl/depth_mode.hpp \
    ../../src/mbgl/gl/draw_mode.hpp \
    ../../src/mbgl/gl/extension.hpp \
    ../../src/mbgl/gl/framebuffer.hpp \
    ../../src/mbgl/gl/index_buffer.hpp \
    ../../src/mbgl/gl/object.hpp \
    ../../src/mbgl/gl/primitives.hpp \
    ../../src/mbgl/gl/program.hpp \
    ../../src/mbgl/gl/renderbuffer.hpp \
    ../../src/mbgl/gl/segment.hpp \
    ../../src/mbgl/gl/state.hpp \
    ../../src/mbgl/gl/stencil_mode.hpp \
    ../../src/mbgl/gl/texture.hpp \
    ../../src/mbgl/gl/types.hpp \
    ../../src/mbgl/gl/uniform.hpp \
    ../../src/mbgl/gl/value.hpp \
    ../../src/mbgl/gl/vertex_array.hpp \
    ../../src/mbgl/gl/vertex_buffer.hpp \
    ../../src/mbgl/layout/clip_lines.hpp \
    ../../src/mbgl/layout/merge_lines.hpp \
    ../../src/mbgl/layout/symbol_feature.hpp \
    ../../src/mbgl/layout/symbol_instance.hpp \
    ../../src/mbgl/layout/symbol_layout.hpp \
    ../../src/mbgl/map/change.hpp \
    ../../src/mbgl/map/transform.hpp \
    ../../src/mbgl/map/transform_state.hpp \
    ../../src/mbgl/map/update.hpp \
    ../../src/mbgl/map/zoom_history.hpp \
    ../../src/mbgl/programs/attributes.hpp \
    ../../src/mbgl/programs/circle_program.hpp \
    ../../src/mbgl/programs/collision_box_program.hpp \
    ../../src/mbgl/programs/debug_program.hpp \
    ../../src/mbgl/programs/fill_program.hpp \
    ../../src/mbgl/programs/line_program.hpp \
    ../../src/mbgl/programs/program.hpp \
    ../../src/mbgl/programs/program_parameters.hpp \
    ../../src/mbgl/programs/programs.hpp \
    ../../src/mbgl/programs/raster_program.hpp \
    ../../src/mbgl/programs/symbol_program.hpp \
    ../../src/mbgl/programs/uniforms.hpp \
    ../../src/mbgl/renderer/bucket.hpp \
    ../../src/mbgl/renderer/circle_bucket.hpp \
    ../../src/mbgl/renderer/debug_bucket.hpp \
    ../../src/mbgl/renderer/fill_bucket.hpp \
    ../../src/mbgl/renderer/frame_history.hpp \
    ../../src/mbgl/renderer/line_bucket.hpp \
    ../../src/mbgl/renderer/paint_parameters.hpp \
    ../../src/mbgl/renderer/painter.hpp \
    ../../src/mbgl/renderer/raster_bucket.hpp \
    ../../src/mbgl/renderer/render_item.hpp \
    ../../src/mbgl/renderer/render_pass.hpp \
    ../../src/mbgl/renderer/render_tile.hpp \
    ../../src/mbgl/renderer/symbol_bucket.hpp \
    ../../src/mbgl/sprite/sprite_atlas.hpp \
    ../../src/mbgl/sprite/sprite_atlas_observer.hpp \
    ../../src/mbgl/sprite/sprite_parser.hpp \
    ../../src/mbgl/storage/asset_file_source.hpp \
    ../../src/mbgl/storage/http_file_source.hpp \
    ../../src/mbgl/storage/local_file_source.hpp \
    ../../src/mbgl/style/bucket_parameters.hpp \
    ../../src/mbgl/style/cascade_parameters.hpp \
    ../../src/mbgl/style/class_dictionary.hpp \
    ../../src/mbgl/style/cross_faded_property_evaluator.hpp \
    ../../src/mbgl/style/layer_impl.hpp \
    ../../src/mbgl/style/layer_observer.hpp \
    ../../src/mbgl/style/layers/background_layer_impl.hpp \
    ../../src/mbgl/style/layers/background_layer_properties.hpp \
    ../../src/mbgl/style/layers/circle_layer_impl.hpp \
    ../../src/mbgl/style/layers/circle_layer_properties.hpp \
    ../../src/mbgl/style/layers/custom_layer_impl.hpp \
    ../../src/mbgl/style/layers/fill_extrusion_layer_impl.hpp \
    ../../src/mbgl/style/layers/fill_extrusion_layer_properties.hpp \
    ../../src/mbgl/style/layers/fill_layer_impl.hpp \
    ../../src/mbgl/style/layers/fill_layer_properties.hpp \
    ../../src/mbgl/style/layers/line_layer_impl.hpp \
    ../../src/mbgl/style/layers/line_layer_properties.hpp \
    ../../src/mbgl/style/layers/raster_layer_impl.hpp \
    ../../src/mbgl/style/layers/raster_layer_properties.hpp \
    ../../src/mbgl/style/layers/symbol_layer_impl.hpp \
    ../../src/mbgl/style/layers/symbol_layer_properties.hpp \
    ../../src/mbgl/style/layout_property.hpp \
    ../../src/mbgl/style/observer.hpp \
    ../../src/mbgl/style/paint_property.hpp \
    ../../src/mbgl/style/parser.hpp \
    ../../src/mbgl/style/property_evaluation_parameters.hpp \
    ../../src/mbgl/style/property_evaluator.hpp \
    ../../src/mbgl/style/property_parsing.hpp \
    ../../src/mbgl/style/query_parameters.hpp \
    ../../src/mbgl/style/rapidjson_conversion.hpp \
    ../../src/mbgl/style/source_impl.hpp \
    ../../src/mbgl/style/source_observer.hpp \
    ../../src/mbgl/style/sources/geojson_source_impl.hpp \
    ../../src/mbgl/style/sources/raster_source_impl.hpp \
    ../../src/mbgl/style/sources/vector_source_impl.hpp \
    ../../src/mbgl/style/style.hpp \
    ../../src/mbgl/style/tile_source_impl.hpp \
    ../../src/mbgl/style/update_batch.hpp \
    ../../src/mbgl/style/update_parameters.hpp \
    ../../src/mbgl/text/bidi.hpp \
    ../../src/mbgl/text/check_max_angle.hpp \
    ../../src/mbgl/text/collision_feature.hpp \
    ../../src/mbgl/text/collision_tile.hpp \
    ../../src/mbgl/text/get_anchors.hpp \
    ../../src/mbgl/text/glyph.hpp \
    ../../src/mbgl/text/glyph_atlas.hpp \
    ../../src/mbgl/text/glyph_atlas_observer.hpp \
    ../../src/mbgl/text/glyph_pbf.hpp \
    ../../src/mbgl/text/glyph_range.hpp \
    ../../src/mbgl/text/glyph_set.hpp \
    ../../src/mbgl/text/placement_config.hpp \
    ../../src/mbgl/text/quads.hpp \
    ../../src/mbgl/text/shaping.hpp \
    ../../src/mbgl/tile/geojson_tile.hpp \
    ../../src/mbgl/tile/geometry_tile.hpp \
    ../../src/mbgl/tile/geometry_tile_data.hpp \
    ../../src/mbgl/tile/geometry_tile_worker.hpp \
    ../../src/mbgl/tile/raster_tile.hpp \
    ../../src/mbgl/tile/raster_tile_worker.hpp \
    ../../src/mbgl/tile/tile.hpp \
    ../../src/mbgl/tile/tile_cache.hpp \
    ../../src/mbgl/tile/tile_id.hpp \
    ../../src/mbgl/tile/tile_loader.hpp \
    ../../src/mbgl/tile/tile_loader_impl.hpp \
    ../../src/mbgl/tile/tile_observer.hpp \
    ../../src/mbgl/tile/vector_tile.hpp \
    ../../src/mbgl/util/async_task.hpp \
    ../../src/mbgl/util/clip_id.hpp \
    ../../src/mbgl/util/dtoa.hpp \
    ../../src/mbgl/util/exclusive.hpp \
    ../../src/mbgl/util/grid_index.hpp \
    ../../src/mbgl/util/http_header.hpp \
    ../../src/mbgl/util/http_timeout.hpp \
    ../../src/mbgl/util/i18n.hpp \
    ../../src/mbgl/util/ignore.hpp \
    ../../src/mbgl/util/indexed_tuple.hpp \
    ../../src/mbgl/util/interpolate.hpp \
    ../../src/mbgl/util/intersection_tests.hpp \
    ../../src/mbgl/util/io.hpp \
    ../../src/mbgl/util/mapbox.hpp \
    ../../src/mbgl/util/mat2.hpp \
    ../../src/mbgl/util/mat3.hpp \
    ../../src/mbgl/util/mat4.hpp \
    ../../src/mbgl/util/math.hpp \
    ../../src/mbgl/util/offscreen_texture.hpp \
    ../../src/mbgl/util/premultiply.hpp \
    ../../src/mbgl/util/rapidjson.hpp \
    ../../src/mbgl/util/rect.hpp \
    ../../src/mbgl/util/std.hpp \
    ../../src/mbgl/util/stopwatch.hpp \
    ../../src/mbgl/util/thread.hpp \
    ../../src/mbgl/util/thread_context.hpp \
    ../../src/mbgl/util/thread_local.hpp \
    ../../src/mbgl/util/tile_coordinate.hpp \
    ../../src/mbgl/util/tile_cover.hpp \
    ../../src/mbgl/util/token.hpp \
    ../../src/mbgl/util/url.hpp \
    ../../src/mbgl/util/utf.hpp \
    ../../src/mbgl/util/work_queue.hpp

# Qt bindings
SOURCES += \
    ../default/asset_file_source.cpp \
    ../default/local_file_source.cpp \
    ../default/logging_stderr.cpp \
    ../default/mbgl/util/default_styles.cpp \
    ../default/mbgl/util/default_thread_pool.cpp \
    ../default/online_file_source.cpp \
    src/async_task.cpp \
    src/bidi.cpp \
    src/http_file_source.cpp \
    src/http_request.cpp \
    src/image.cpp \
    src/qmapbox.cpp \
    src/qmapboxgl.cpp \
    src/qquickmapboxgl.cpp \
    src/qquickmapboxglmapparameter.cpp \
    src/qquickmapboxglrenderer.cpp \
    src/run_loop.cpp \
    src/string_stdlib.cpp \
    src/thread_local.cpp \
    src/timer.cpp

HEADERS += \
    include/qmapbox.hpp \
    include/qmapboxgl.hpp \
    src/async_task_impl.hpp \
    src/http_file_source.hpp \
    src/http_request.hpp \
    src/qmapboxgl_p.hpp \
    src/qquickmapboxgl.hpp \
    src/qquickmapboxglmapparameter.hpp \
    src/qquickmapboxglrenderer.hpp \
    src/qt_conversion.hpp \
    src/qt_geojson.hpp \
    src/run_loop_impl.hpp \
    src/timer_impl.hpp

INCLUDEPATH += \
    include \
    ../default \
    ../../src \
    ../../include \
    ../../src/3rd_party/earcut \
    ../../src/3rd_party/earcut/include \
    ../../src/3rd_party/geojson-cpp \
    ../../src/3rd_party/geojson-cpp/include \
    ../../src/3rd_party/geojson-vt-cpp \
    ../../src/3rd_party/geojson-vt-cpp/include \
    ../../src/3rd_party/geometry.hpp \
    ../../src/3rd_party/geometry.hpp/include \
    ../../src/3rd_party/kdbush.hpp \
    ../../src/3rd_party/kdbush.hpp/include \
    ../../src/3rd_party/libboost \
    ../../src/3rd_party/libboost/include \
    ../../src/3rd_party/mapbox-gl-shaders \
    ../../src/3rd_party/mapbox-gl-shaders/include \
    ../../src/3rd_party/optional \
    ../../src/3rd_party/optional/include \
    ../../src/3rd_party/polylabel \
    ../../src/3rd_party/polylabel/include \
    ../../src/3rd_party/protozero \
    ../../src/3rd_party/protozero/include \
    ../../src/3rd_party/rapidjson \
    ../../src/3rd_party/rapidjson/include \
    ../../src/3rd_party/stamps \
    ../../src/3rd_party/stamps/include \
    ../../src/3rd_party/supercluster.hpp \
    ../../src/3rd_party/supercluster.hpp/include \
    ../../src/3rd_party/unique_resource \
    ../../src/3rd_party/unique_resource/include \
    ../../src/3rd_party/variant \
    ../../src/3rd_party/variant/include

RESOURCES += \
    qmapbox.qrc

QMAKE_CXXFLAGS += \
    -DNDEBUG \
    -DQT_IMAGE_DECODERS \
    -D__QT__ \
    -ftemplate-depth=1024 \
    -fvisibility=hidden

LIBS += \
    -lz

linux {
    android {
        SOURCES += \
            src/thread.cpp
    } else {
        SOURCES += \
            ../default/thread.cpp
    }
}

darwin {
    SOURCES += \
        ../darwin/src/nsthread.mm

    LIBS += \
        -framework Foundation
}

win32 {
    SOURCES += \
        src/thread.cpp

    QMAKE_CXXFLAGS += \
        -DNOGDI \
        -DNOMINMAX \
        -D_USE_MATH_DEFINES
}

qtConfig(opengles2) {
    QMAKE_CXXFLAGS += \
        -DMBGL_USE_GLES2
}

mapbox_offline {
    LIBS += \
        -lsqlite3

    QMAKE_CXXFLAGS += \
        -DQT_OFFLINE

    SOURCES += \
        ../default/default_file_source.cpp \
        ../default/mbgl/storage/offline.cpp \
        ../default/mbgl/storage/offline_database.cpp \
        ../default/mbgl/storage/offline_download.cpp \
        ../default/sqlite3.cpp

    HEADERS += \
        ../default/mbgl/storage/offline_database.hpp \
        ../default/mbgl/storage/offline_download.hpp \
        ../default/sqlite3.hpp
}
