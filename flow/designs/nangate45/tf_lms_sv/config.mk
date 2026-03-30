export DESIGN_NAME = tf_lms_sv
export DESIGN_NICKNAME = tf_lms_sv
export PLATFORM = nangate45

export VERILOG_FILES = $(FLOW_HOME)/../code/src/sv/rtl/adaptation_lms.sv
export SDC_FILE = $(FLOW_HOME)/../code/constraints/tf_lms_sv.sdc

export ABC_AREA = 1
export CORE_UTILIZATION ?= 35
export PLACE_DENSITY ?= 0.45
export PLACE_DENSITY_LB_ADDON = 0.20
export TNS_END_PERCENT = 100
export HOLD_SLACK_MARGIN = 0.03
export MAX_BUFFER_PERCENT = 100
export MAX_UTILIZATION = 70
