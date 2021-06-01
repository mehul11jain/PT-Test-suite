include_directories(./include)
add_library(PTEval SHARED  
    src/EvaluateAnalysis.cpp    
)
set_target_properties(PTEval PROPERTIES
    COMPILE_FLAGS "-std=c++14 -fno-rtti -g"
)
target_link_libraries(PTEval PRIVATE nlohmann_json::nlohmann_json)
set_target_properties(PTEval PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
include(GNUInstallDirs)
install(TARGETS PTEval LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
install(DIRECTORY
./include/ DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME})