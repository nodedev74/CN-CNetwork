############################
### Author: nodedev74
### Created: 23-06-22
### Purpose: version handler
#############################

# updates cn/version.h

function(update_version input output)

    # READ pattern file

    file (READ "${input}" PATTERN)

    # REPLACE target substrings

    string (REPLACE "@MAJOR_VERSION@" "${MAJOR_VERSION}" UPDATE_A ${PATTERN})
    string (REPLACE "@MINOR_VERSION@" "${MINOR_VERSION}" UPDATE_B ${UPDATE_A})
    string (REPLACE "@RELEASE_NUMBER@" "${RELEASE_NUMBER}" UPDATE_C ${UPDATE_B})
    string (REPLACE "@CN_VERSION@" "${PROJ_VERSION}" OUTPUT ${UPDATE_C})

    # WRITE C-Header file

    file (WRITE "${output}" ${OUTPUT})

endfunction(update_version input output)

