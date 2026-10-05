# ============================================================
# MMMC SETUP
# GSCLIB045 / 45nm
# ============================================================

# ------------------------------------------------------------
# Timing libraries
# ------------------------------------------------------------

create_library_set -name LIB_SLOW \
    -timing [list \
        "/home/install/FOUNDRY/digital/45nm/LIBS/lib/max/slow.lib"
    ]

create_library_set -name LIB_FAST \
    -timing [list \
        "/home/install/FOUNDRY/digital/45nm/LIBS/lib/min/fast.lib"
    ]


# ------------------------------------------------------------
# Constraint mode
# ------------------------------------------------------------

create_constraint_mode -name FUNC \
    -sdc_files [list "./Scripts/constraints.sdc"]


# ------------------------------------------------------------
# Delay corners
# ------------------------------------------------------------

create_delay_corner -name DC_SLOW \
    -library_set LIB_SLOW \

create_delay_corner -name DC_FAST \
    -library_set LIB_FAST \


# ------------------------------------------------------------
# Analysis views
# ------------------------------------------------------------

create_analysis_view -name SETUP_VIEW \
    -constraint_mode FUNC \
    -delay_corner DC_SLOW

create_analysis_view -name HOLD_VIEW \
    -constraint_mode FUNC \
    -delay_corner DC_FAST


# ------------------------------------------------------------
# Activate analysis views
# ------------------------------------------------------------

set_analysis_view \
    -setup {SETUP_VIEW} \
    -hold {HOLD_VIEW}
