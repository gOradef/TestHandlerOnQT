# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/the_project_hw_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/the_project_hw_autogen.dir/ParseCache.txt"
  "the_project_hw_autogen"
  )
endif()
