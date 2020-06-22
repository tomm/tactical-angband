MACRO(CONFIGURE_SDL_FRONTEND _NAME_TARGET)

    FIND_PACKAGE(SDL)
    FIND_PACKAGE(SDL_ttf)
    FIND_PACKAGE(SDL_image)

    IF(SDL_FOUND AND SDL_TTF_FOUND AND SDL_IMAGE_FOUND)

        TARGET_LINK_LIBRARIES(${_NAME_TARGET} PRIVATE ${SDL_LIBRARY})
        TARGET_LINK_LIBRARIES(${_NAME_TARGET} PRIVATE ${SDL_TTF_LIBRARIES})
        TARGET_LINK_LIBRARIES(${_NAME_TARGET} PRIVATE ${SDL_IMAGE_LIBRARIES})
        TARGET_INCLUDE_DIRECTORIES(${_NAME_TARGET} PRIVATE ${SDL_INCLUDE_DIR})
        TARGET_INCLUDE_DIRECTORIES(${_NAME_TARGET} PRIVATE ${SDL_TTF_INCLUDE_DIRS})
        TARGET_INCLUDE_DIRECTORIES(${_NAME_TARGET} PRIVATE ${SDL_IMAGE_INCLUDE_DIRS})
        TARGET_COMPILE_DEFINITIONS(${_NAME_TARGET} PRIVATE -D USE_SDL)
        MESSAGE(STATUS "Support to SDL Frontend - Ready")

    ELSE()

        MESSAGE(FATAL_ERROR "Support to SDL Frontend - Fail")

    ENDIF()

ENDMACRO()