###################################################################
#
#	add by tiankonguse 20:52 2015/4/14
#
###################################################################

SET(CMAKE_CXX_FLAGS " -g -Wall -o2")

SET(md5api_lib_path ${PROJECT_SOURCE_DIR}/lib)
SET(md5api_src_path ${PROJECT_SOURCE_DIR}/src)

INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/include)

AUX_SOURCE_DIRECTORY(${md5api_src_path} X_SRC)
ADD_LIBRARY(md5api STATIC ${X_SRC})

SET_TARGET_PROPERTIES(md5api PROPERTIES ARCHIVE_OUTPUT_DIRECTORY "${md5api_lib_path}")
