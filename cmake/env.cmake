# set up QT Kit Path 
#
# 1. CMakePresets.json -> DependentsEnv.QT_KIT_PATH
# 2. $ENV{QT_KIT_PATH}

if(DEFINED ENV{QT_KIT_PATH} AND NOT DEFINED QT_KIT_PATH)
	set(QT_KIT_PATH $ENV{QT_KIT_PATH} CACHE STRING "")
	message("set QT_KIT_PATH as ENV say : ${QT_KIT_PATH}")
endif()
# check if KIT exists
if(NOT IS_DIRECTORY ${QT_KIT_PATH})
	message(SEND_ERROR "illegal QT_KIT_PATH: ${QT_KIT_PATH}")
endif()

