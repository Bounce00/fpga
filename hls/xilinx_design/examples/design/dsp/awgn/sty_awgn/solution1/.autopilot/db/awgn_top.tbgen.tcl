set C_TypeInfoList {{ 
"awgn_top" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"snr": [[], {"reference": "0"}] }, {"noise": [[], {"reference": "1"}] }],[],""], 
"1": [ "stream<ap_int<16> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_int<16>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 16}}]],""]}}], 
"0": [ "stream<ap_ufixed<8, 4, 0, 0, 0> >", {"hls_type": {"stream": [[[[],"4"]],"3"]}}], 
"4": [ "ap_ufixed<8, 4, 0, 0, 0>", {"hls_type": {"ap_ufixed": [[[[], {"scalar": { "int": 8}}],[[], {"scalar": { "int": 4}}],[[], {"scalar": { "5": 0}}],[[], {"scalar": { "6": 0}}],[[], {"scalar": { "int": 0}}]],""]}}], 
"6": [ "ap_o_mode", {"enum": [[],[],[{"SC_SAT":  {"scalar": "__integer__"}},{"SC_SAT_ZERO":  {"scalar": "__integer__"}},{"SC_SAT_SYM":  {"scalar": "__integer__"}},{"SC_WRAP":  {"scalar": "__integer__"}},{"SC_WRAP_SM":  {"scalar": "__integer__"}}],""]}], 
"5": [ "ap_q_mode", {"enum": [[],[],[{"SC_RND":  {"scalar": "__integer__"}},{"SC_RND_ZERO":  {"scalar": "__integer__"}},{"SC_RND_MIN_INF":  {"scalar": "__integer__"}},{"SC_RND_INF":  {"scalar": "__integer__"}},{"SC_RND_CONV":  {"scalar": "__integer__"}},{"SC_TRN":  {"scalar": "__integer__"}},{"SC_TRN_ZERO":  {"scalar": "__integer__"}}],""]}],
"3": ["hls", ""]
}}
set moduleName awgn_top
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {awgn_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ snr_V_V int 8 regular {fifo 0 volatile }  }
	{ noise_V_V int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "snr_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "snr.V.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "noise_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "noise.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ snr_V_V_dout sc_in sc_lv 8 signal 0 } 
	{ snr_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ snr_V_V_read sc_out sc_logic 1 signal 0 } 
	{ noise_V_V_din sc_out sc_lv 16 signal 1 } 
	{ noise_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ noise_V_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "snr_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "snr_V_V", "role": "dout" }} , 
 	{ "name": "snr_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "snr_V_V", "role": "empty_n" }} , 
 	{ "name": "snr_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "snr_V_V", "role": "read" }} , 
 	{ "name": "noise_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "noise_V_V", "role": "din" }} , 
 	{ "name": "noise_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "noise_V_V", "role": "full_n" }} , 
 	{ "name": "noise_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "noise_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "awgn_top",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "snr_V_V", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "snr_V_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "noise_V_V", "Type" : "Fifo", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "noise_V_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "uut_lfsr128_V", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "1", "SubInstance" : "grp_operator_s_fu_49", "Port" : "uut_lfsr128_V"}]},
		{"Name" : "coarseContents", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "1", "SubInstance" : "grp_operator_s_fu_49", "Port" : "coarseContents"}]},
		{"Name" : "gradientContents", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "1", "SubInstance" : "grp_operator_s_fu_49", "Port" : "gradientContents"}]},
		{"Name" : "scaleLookup", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "1", "SubInstance" : "grp_operator_s_fu_49", "Port" : "scaleLookup"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_operator_s_fu_49"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_s_fu_49", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7"],
		"CDFG" : "operator_s",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "snr_V_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "uut_lfsr128_V", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "coarseContents", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "gradientContents", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "scaleLookup", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_s_fu_49.coarseContents_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_s_fu_49.gradientContents_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_s_fu_49.scaleLookup_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_s_fu_49.norm_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_s_fu_49.awgn_top_mux_42_9_1_U0", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_s_fu_49.awgn_top_mul_mul_eOg_U1", "Parent" : "1"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "54", "Max" : "54"}
	, {"Name" : "Interval", "Min" : "55", "Max" : "55"}
]}

set Spec2ImplPortList { 
	snr_V_V { ap_fifo {  { snr_V_V_dout fifo_data 0 8 }  { snr_V_V_empty_n fifo_status 0 1 }  { snr_V_V_read fifo_update 1 1 } } }
	noise_V_V { ap_fifo {  { noise_V_V_din fifo_data 1 16 }  { noise_V_V_full_n fifo_status 0 1 }  { noise_V_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	snr_V_V { fifo_read 1 no_conditional }
	noise_V_V { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
