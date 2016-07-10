cmake_minimum_required(VERSION 2.8)                                                                                           
project(auto-build-framework)                                                                                                                            
if("${CMAKE_SOURCE_DIR}" STREQUAL "${CMAKE_BINARY_DIR}")
	message(FATAL_ERROR "in-source builds are not allowed. ${CMAKE_SOURCE_DIR}")
endif()     

set(XXXXX_TAG "XXXXX-x.y.z")                                                     
set(XXXXX_SVN_URL "UUUUU.../tags/${XXXXX_TAG}")

set(FRAMEWORK_PREFIX "WWWWWW")

include(ExternalProject)                                                                                                                
find_package(Subversion)            
if(Subversion_FOUND)                 
    if(EXISTS "${FRAMEWORK_PREFIX}/xxxxx")                                                       
        Subversion_WC_INFO(${FRAMEWORK_PREFIX}/xxxxx XXXXX_OLD)      
        if(NOT (${XXXXX_OLD_WC_URL} STREQUAL ${XXXXX_SVN_URL}))                
#drop all working copy's modify
            execute_process( 
                COMMAND svn switch ${XXXXX_SVN_URL} --accept theirs-full              
                WORKING_DIRECTORY ${FRAMEWORK_PREFIX}/xxxxx                          
                )                            
        endif()                       
    endif()                     
endif()
                                                                                                                                    
ExternalProject_Add(                       
    xxxxx                    
    SVN_REPOSITORY ${XXXXX_SVN_URL}                     
    TMP_DIR tmp                
    STAMP_DIR xxxxx-stamp               
    DOWNLOAD_DIR ${FRAMEWORK_PREFIX}/xxxxx                                         
    SOURCE_DIR ${FRAMEWORK_PREFIX}/xxxxx                        
    BINARY_DIR ${FRAMEWORK_PREFIX}/build/xxxxx                                             
    TEST_BEFORE_INSTALL 0       
    BUILD_IN_SOURCE 0         
    INSTALL_COMMAND ""  
)
