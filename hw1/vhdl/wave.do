onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /full_adder/A
add wave -noupdate /full_adder/B
add wave -noupdate /full_adder/CIN
add wave -noupdate /full_adder/COUT
add wave -noupdate /full_adder/SUM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {61 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {250 ns} {1250 ns}
