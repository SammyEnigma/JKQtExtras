if(NOT DEFINED JKQtExtras_BUILD_SHARED_LIBS)
    option(JKQtExtras_BUILD_SHARED_LIBS "Build as shared library" ON)
endif()
if(NOT DEFINED JKQtExtras_BUILD_STATIC_LIBS)
    option(JKQtExtras_BUILD_STATIC_LIBS "Build as static library" OFF)
endif()
if(NOT DEFINED JKQtExtras_BUILD_DECORATE_LIBNAMES_WITH_BUILDTYPE)
    option(JKQtExtras_BUILD_DECORATE_LIBNAMES_WITH_BUILDTYPE "If set, the build-type (debug/release/...) is appended to the library name" ON)
endif()
if(NOT DEFINED JKQtExtras_BUILD_EXAMPLES)
    option(JKQtExtras_BUILD_EXAMPLES "Build the examples examples" ON)
endif()
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
    option(CMAKE_INSTALL_PREFIX "Install directory" ${CMAKE_CURRENT_SOURCE_DIR}/install)
endif()


#evaluate the settings above
if (NOT CMAKE_INSTALL_LIBDIR)
    set(CMAKE_INSTALL_LIBDIR "lib")
endif()

if (NOT CMAKE_INSTALL_BINDIR)
    set(CMAKE_INSTALL_BINDIR "bin")
endif()

if (NOT CMAKE_INSTALL_INCLUDEDIR)
    set(CMAKE_INSTALL_INCLUDEDIR "include")
endif()

# place all DLLs and EXEs in the subdirectory output of the top level directory of the build tree
set (CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)


if(JKQtExtras_BUILD_DECORATE_LIBNAMES_WITH_BUILDTYPE)
    set(JKQtExtras_LIBNAME_ADDITION "_$<CONFIG>") #"_${CMAKE_BUILD_TYPE}")
else()
    set(JKQtExtras_LIBNAME_ADDITION )
endif()
