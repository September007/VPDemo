
# parse regex_path
function( parse_regex_path return_set regex_path)
    set(regex_path ${regex_path} ${ARGN})
    file(GLOB SourceFiles ${regex_path})
    set(${return_set} )
    foreach(whom ${SourceFiles})
        STRING(REGEX REPLACE ".+/(.+)\\..*" "\\1" FILE_NAME  ${whom})
        set(${return_set} ${${return_set}} ${whom})
    endforeach()
    set(${return_set} ${${return_set}} CACHE STRING "seems like only cache varible can stay alive out of function scope" )
endfunction()
