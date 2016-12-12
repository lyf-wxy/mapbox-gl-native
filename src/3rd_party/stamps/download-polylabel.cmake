message(STATUS "downloading...
     src='https://github.com/mapbox/polylabel/archive/20daf82.zip'
     dst='/home/tmpsantos/Projects/mapbox-gl-native/build/polylabel-prefix/src/20daf82.zip'
     timeout='none'")




file(DOWNLOAD
  "https://github.com/mapbox/polylabel/archive/20daf82.zip"
  "/home/tmpsantos/Projects/mapbox-gl-native/build/polylabel-prefix/src/20daf82.zip"
  SHOW_PROGRESS
  # no TIMEOUT
  STATUS status
  LOG log)

list(GET status 0 status_code)
list(GET status 1 status_string)

if(NOT status_code EQUAL 0)
  message(FATAL_ERROR "error: downloading 'https://github.com/mapbox/polylabel/archive/20daf82.zip' failed
  status_code: ${status_code}
  status_string: ${status_string}
  log: ${log}
")
endif()

message(STATUS "downloading... done")
