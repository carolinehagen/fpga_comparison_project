if {[catch {

# define run engine funtion
source [file join {C:/lscc/radiant/2025.2} scripts tcl flow run_engine.tcl]
# define global variables
global para
set para(gui_mode) "1"
set para(prj_dir) "C:/Users/carol/repos/fpga_comparison_project/radiant_project"
if {![file exists {C:/Users/carol/repos/fpga_comparison_project/radiant_project/impl_1}]} {
  file mkdir {C:/Users/carol/repos/fpga_comparison_project/radiant_project/impl_1}
}
cd {C:/Users/carol/repos/fpga_comparison_project/radiant_project/impl_1}
# synthesize IPs
# synthesize VMs
# synthesize top design
file delete -force -- radiant_project_impl_1.vm radiant_project_impl_1.ldc
if {[file normalize "C:/Users/carol/repos/fpga_comparison_project/radiant_project/impl_1/radiant_project_impl_1_synplify.tcl"] != [file normalize "./radiant_project_impl_1_synplify.tcl"]} {
  file copy -force "C:/Users/carol/repos/fpga_comparison_project/radiant_project/impl_1/radiant_project_impl_1_synplify.tcl" "./radiant_project_impl_1_synplify.tcl"
}
if {[ catch {::radiant::runengine::run_engine synpwrap -prj "radiant_project_impl_1_synplify.tcl" -log "radiant_project_impl_1.srf"} result options ]} {
    file delete -force -- radiant_project_impl_1.vm radiant_project_impl_1.ldc
    return -options $options $result
}
::radiant::runengine::run_postsyn [list -a LFD2NX -p LFD2NX-25 -t CABGA256 -sp 9_High-Performance_1.0V -oc Commercial -top -w -o radiant_project_impl_1_syn.udb radiant_project_impl_1.vm] [list radiant_project_impl_1.ldc]

} out]} {
   ::radiant::runengine::runtime_log $out
   exit 1
}
