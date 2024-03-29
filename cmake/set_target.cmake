function(set_target target)    
    target_include_directories(${target} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../inc)
    target_include_directories(${target} PUBLIC ${CMAKE_CURRENT_BINARY_DIR}/../)

    target_compile_features(${target} PUBLIC cxx_std_20)
    target_compile_options(${target} PUBLIC -Wall -Wextra -fmessage-length=0 -x c++ ${CMAKE_CXX_FLAGS})

    target_link_libraries(${target} PRIVATE -lstdc++fs)

    # if(CMAKE_BUILD_TYPE STREQUAL "Debug" )
    #     target_compile_options(${target} PUBLIC -O0 -ggdb ${compile_flag})
    # else()
    #     target_compile_options(${target} PUBLIC -Ofast -march=native ${compile_flag})
    # endif()

    # set_fmt_link_libraries(${target})
    # if(USE_MPI)
    #     set_mpi_link_libraries(${target})
    # endif()
    # if(USE_OMP)
    #     set_omp_link_libraries(${target})
    # endif()
    # if(USE_OCL AND NOT SDUMONT_BUILD)
    #     set_ocl_link_libraries(${target})
    # endif()
    # if(SDUMONT_BUILD AND NOT USE_OCL)
    #     set_ocl_sdumont_link_libraries(${target})
    # endif()

    # set_property(TARGET ${target} PROPERTY VERSION ${dockthor_version})
    
endfunction()