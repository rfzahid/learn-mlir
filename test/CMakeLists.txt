configure_lit_site_cfg(
        ${CMAKE_CURRENT_SOURCE_DIR}/lit.site.cfg.py.in
        ${CMAKE_CURRENT_BINARY_DIR}/lit.site.cfg.py
        MAIN_CONFIG
        ${CMAKE_CURRENT_SOURCE_DIR}/lit.cfg.py
)

set(ARSENAL_TEST_DEPENDS
        FileCheck count not
        mlir-opt
        arsenal-opt
        )

add_lit_testsuite(check-arsenal "Running the arsenal regression tests"
        ${CMAKE_CURRENT_BINARY_DIR}
        DEPENDS ${ARSENAL_TEST_DEPENDS}
        )
set_target_properties(check-arsenal PROPERTIES FOLDER "Tests")

add_lit_testsuites(ARSENAL ${CMAKE_CURRENT_SOURCE_DIR} DEPENDS ${ARSENAL_TEST_DEPENDS})
