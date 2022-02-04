cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

project(StandaloneProgram LANGUAGES CXX)

# --- Import tools ----

include(../cmake/tools.cmake)

# ---- Dependencies ----

include(../cmake/CPM.cmake)


CPMAddPackage(NAME AlienInvadersRetro SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR}/..)

# ---- Create standalone executable ----

file(GLOB sources CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/source/*.cpp)
file(GLOB_RECURSE headers CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/../include/*.h")

add_executable(${PROJECT_NAME} ${sources} ${headers})


set_target_properties(${PROJECT_NAME} PROPERTIES CXX_STANDARD 17 OUTPUT_NAME "Program")

target_link_libraries(${PROJECT_NAME} PRIVATE)

target_include_directories(
  ${PROJECT_NAME} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/../include>
                         $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)
