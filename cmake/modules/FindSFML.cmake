set(SFML_STATIC_LIBRARIES TRUE)
set(SFML_USE_SYSTEM_DEPS FALSE)
set(BUILD_SHARED_LIBS FALSE)
# set(SFML_BUILD_AUDIO FALSE)
# set(SFML_BUILD_DOC FALSE)
# set(SFML_BUILD_EXAMPLES FALSE)
# set(SFML_BUILD_GRAPHICS TRUE)
# set(SFML_BUILD_NETWORK FALSE)
# set(SFML_BUILD_TEST_SUITE FALSE)
# set(SFML_BUILD_WINDOW TRUE)
# set(SFML_INSTALL_PKGCONFIG_FILES FALSE)
# set(SFML_USE_STATIC_STD_LIBS FALSE)

find_package(SFML 2.5.1 EXACT PATHS "P:/Downloads/gopath/src/github.com/dirkarnez/cpk/cpp_libraries/sfml-v2.5.1-mingw/SFML/build/sfml/lib/cmake/SFML") #/sfml-v2.5.1-mingw

foreach (component ${SFML_FIND_COMPONENTS})
    string(TOUPPER "${component}" UPPER_COMPONENT)
    message(STATUS "SFML_${UPPER_COMPONENT}_FOUND sfml-${component} ${SFML_${UPPER_COMPONENT}_FOUND}")
endforeach()
