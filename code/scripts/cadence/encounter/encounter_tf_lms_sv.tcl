set script_dir [file dirname [file normalize [info script]]]
set project_root [file normalize [file join $script_dir .. .. ..]]
set out_dir [file join $project_root artifacts encounter default]
file mkdir $out_dir
cd $out_dir

loadConfig [file join $script_dir encounter_tf_lms_sv.conf]

# Floorplan
floorplan -r 1.0 0.6 20 20 20 20

# Basic power planning
addRing -spacing_bottom 5 -width_left 5 -width_bottom 5 -width_top 5 -spacing_top 5 -layer_bottom metal5 -width_right 5 -around core -center 1 -layer_top metal5 -spacing_right 5 -spacing_left 5 -layer_right metal6 -layer_left metal6 -nets { gnd vdd }

# Placement
amoebaPlace
trialroute
buildTimingGraph
setCteReport
reportTA -nworst 10 -net > timing.rep.1.placed

# CTS
createClockTreeSpec -output encounter.cts -bufFootprint buf -invFootprint inv
specifyClockTree -clkfile encounter.cts
ckSynthesis -rguide cts.rguide -report report.ctsrpt -macromodel report.ctsmdl -fix_added_buffers

# Route and timing
trialRoute -highEffort -guide cts.rguide
extractRC
reportClockTree -postRoute -localSkew -report skew.post_troute_local.ctsrpt
reportClockTree -postRoute -report report.post_troute.ctsrpt

setAnalysisMode -setup -async -skew -autoDetectClockTree
buildTimingGraph
setCteReport
reportTA -nworst 10 -net > timing.rep.2.cts

setIPOMode -highEffort -fixDrc -addPortAsNeeded -incrTrialRoute -restruct -topomap
initECO ipo2.txt
setExtractRCMode -default -assumeMetFill
extractRC
fixSetupViolation -guide cts.rguide

setExtractRCMode -detail -assumeMetFill
extractRC
if {[isDRVClean -maxTran -maxCap -maxFanout] != 1} {
    fixDRCViolation -maxTran -maxCap -maxFanout
}

endECO
cleanupECO

buildTimingGraph
setCteReport
reportTA -nworst 10 -net > timing.rep.3.final

addFiller -cell FILL -prefix FILL -fillBoundary

globalNetConnect vdd -type tiehi
globalNetConnect vdd -type pgpin -pin vdd -override
globalNetConnect gnd -type tielo
globalNetConnect gnd -type pgpin -pin gnd -override

globalDetailRoute

setExtractRCMode -detail -noReduce
extractRC
buildTimingGraph
setCteReport
reportTA -nworst 10 -net > timing.rep.4.postroute

streamOut final.gds2 -mapFile [file join $project_root pdk Tool PDK PDK_45nm osu_soc ref_design Encounter gds2_encounter.map] -stripes 1 -units 1000 -mode ALL
saveNetlist -excludeLeafCell final.v
rcout -spf final.dspf

verifyGeometry
verifyConnectivity -type all

puts "Encounter flow finished"
