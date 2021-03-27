add_llvm_library(TSuite MODULE
    Reference_pt.cpp
    PLUGIN_TOOL
    opt
)
target_link_libraries(TSuite PRIVATE PointsToDump)