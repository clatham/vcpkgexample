cmake_minimum_required(VERSION 3.5)


add_executable(test
    main.cpp
)

target_include_directories(test PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/..
    ${VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/include
)

target_link_directories(test PRIVATE
    ${VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/lib
)

target_link_libraries(test PRIVATE
    ZLIB::ZLIB
)

#[[
if(WIN32)
    target_link_options(test PRIVATE
        "/subsystem:windows"
        "/entry:mainCRTStartup")
endif()
#]]