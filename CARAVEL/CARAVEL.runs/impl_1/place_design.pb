
?
Command: %s
53*	vivadotcl2
place_designZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2

xc7a100tZ17-347h px� 
p
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2

xc7a100tZ17-349h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
place_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
Q
DRC finished with %s
79*	vivadotcl2
0 Errors, 43 WarningsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
k
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
8Z30-611h px� 
C

Starting %s Task
103*constraints2
PlacerZ18-103h px� 
R

Phase %s%s
101*constraints2
1 2
Placer InitializationZ18-101h px� 
d

Phase %s%s
101*constraints2
1.1 2'
%Placer Initialization Netlist SortingZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012
00:00:00.012

3149.0002
0.0002
41702
8124Z17-722h px� 
a
%s*common2H
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 1102ddeaf
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4170 ; free virtual = 8124h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3149.0002
0.0002
41702
8124Z17-722h px� 
q

Phase %s%s
101*constraints2
1.2 24
2IO Placement/ Clock Placement/ Build Placer DeviceZ18-101h px� 
�
9Poor placement for routing between an IO pin and BUFG. %s528*place2�
�This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	<MSGMETA::BEGIN::BLOCK>mprj_io_IOBUF[4]_inst/IBUF<MSGMETA::END> (IBUF.O) is locked to IOB_X1Y112
	<MSGMETA::BEGIN::BLOCK>mprj_io_IBUF_BUFG[4]_inst<MSGMETA::END> (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y3
"�
mprj_io_IOBUF[4]_inst/IBUF2�This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	:# (IBUF.O) is locked to IOB_X1Y112
	"c
mprj_io_IBUF_BUFG[4]_inst2 :B (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y3
8Z30-574h px� 
m
%s*common2T
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: aaf6d0bd
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.7 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4170 ; free virtual = 8124h px� 
Y

Phase %s%s
101*constraints2
1.3 2
Build Placer Netlist ModelZ18-101h px� 
V
%s*common2=
;Phase 1.3 Build Placer Netlist Model | Checksum: 130cd2a90
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:07 ; elapsed = 00:00:03 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4169 ; free virtual = 8128h px� 
V

Phase %s%s
101*constraints2
1.4 2
Constrain Clocks/MacrosZ18-101h px� 
S
%s*common2:
8Phase 1.4 Constrain Clocks/Macros | Checksum: 130cd2a90
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:07 ; elapsed = 00:00:03 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4169 ; free virtual = 8128h px� 
O
%s*common26
4Phase 1 Placer Initialization | Checksum: 130cd2a90
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:07 ; elapsed = 00:00:03 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4169 ; free virtual = 8128h px� 
M

Phase %s%s
101*constraints2
2 2
Global PlacementZ18-101h px� 
L

Phase %s%s
101*constraints2
2.1 2
FloorplanningZ18-101h px� 
H
%s*common2/
-Phase 2.1 Floorplanning | Checksum: f89fa52f
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4170 ; free virtual = 8129h px� 
`

Phase %s%s
101*constraints2
2.2 2#
!Update Timing before SLR Path OptZ18-101h px� 
]
%s*common2D
BPhase 2.2 Update Timing before SLR Path Opt | Checksum: 1a0130ae2
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:11 ; elapsed = 00:00:05 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4170 ; free virtual = 8129h px� 
_

Phase %s%s
101*constraints2
2.3 2"
 Post-Processing in FloorplanningZ18-101h px� 
\
%s*common2C
APhase 2.3 Post-Processing in Floorplanning | Checksum: 1a0130ae2
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:12 ; elapsed = 00:00:05 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4171 ; free virtual = 8129h px� 
T

Phase %s%s
101*constraints2
2.4 2
Global Placement CoreZ18-101h px� 
g

Phase %s%s
101*constraints2
2.4.1 2(
&UpdateTiming Before Physical SynthesisZ18-101h px� 
d
%s*common2K
IPhase 2.4.1 UpdateTiming Before Physical Synthesis | Checksum: 155c3981e
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:36 ; elapsed = 00:00:15 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4180 ; free virtual = 8139h px� 
]

Phase %s%s
101*constraints2
2.4.2 2
Physical Synthesis In PlacerZ18-101h px� 
w
FFound %s LUTNM shape to break, %s LUT instances to create LUTNM shape
553*physynth2
02
528Z32-1035h px� 
�
YBreak lutnm for timing: one critical %s, two critical %s, total %s, new lutff created %s
561*physynth2
02
02
02
0Z32-1044h px� 
�
^End %s Pass. Optimized %s %s. Breaked %s %s, combined %s existing %s and moved %s existing %s
576*physynth2
12
2032
nets or LUTs2
02
LUT2
2032
LUTs2
02
LUTZ32-1138h px� 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px� 
e
$Optimized %s %s. Created %s new %s.
216*physynth2
02
net2
02

instanceZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
q
0No setup violation found.  %s was not performed.344*physynth2
DSP Register OptimizationZ32-670h px� 

0No setup violation found.  %s was not performed.344*physynth2)
'Shift Register to Pipeline OptimizationZ32-670h px� 
s
0No setup violation found.  %s was not performed.344*physynth2
Shift Register OptimizationZ32-670h px� 
r
0No setup violation found.  %s was not performed.344*physynth2
BRAM Register OptimizationZ32-670h px� 
r
0No setup violation found.  %s was not performed.344*physynth2
URAM Register OptimizationZ32-670h px� 
o
KNo candidate nets found for dynamic/static region interface net replication521*physynthZ32-949h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3149.0002
0.0002
41762
8137Z17-722h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  LUT Combining                                    |            0  |            203  |                   203  |           0  |           1  |  00:00:01  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |            0  |            203  |                   203  |           0  |           4  |  00:00:01  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
Z
%s*common2A
?Phase 2.4.2 Physical Synthesis In Placer | Checksum: 1f7f85a97
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:40 ; elapsed = 00:00:16 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4176 ; free virtual = 8137h px� 
Q
%s*common28
6Phase 2.4 Global Placement Core | Checksum: 194795f82
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:41 ; elapsed = 00:00:17 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4175 ; free virtual = 8137h px� 
J
%s*common21
/Phase 2 Global Placement | Checksum: 194795f82
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:41 ; elapsed = 00:00:17 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4175 ; free virtual = 8137h px� 
M

Phase %s%s
101*constraints2
3 2
Detail PlacementZ18-101h px� 
Y

Phase %s%s
101*constraints2
3.1 2
Commit Multi Column MacrosZ18-101h px� 
V
%s*common2=
;Phase 3.1 Commit Multi Column Macros | Checksum: 18a62af61
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:43 ; elapsed = 00:00:18 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4175 ; free virtual = 8137h px� 
[

Phase %s%s
101*constraints2
3.2 2
Commit Most Macros & LUTRAMsZ18-101h px� 
X
%s*common2?
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 2376fcc7c
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:47 ; elapsed = 00:00:19 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4175 ; free virtual = 8137h px� 
U

Phase %s%s
101*constraints2
3.3 2
Area Swap OptimizationZ18-101h px� 
R
%s*common29
7Phase 3.3 Area Swap Optimization | Checksum: 258a0ae1f
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:48 ; elapsed = 00:00:19 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4175 ; free virtual = 8136h px� 
]

Phase %s%s
101*constraints2
3.4 2 
Pipeline Register OptimizationZ18-101h px� 
Z
%s*common2A
?Phase 3.4 Pipeline Register Optimization | Checksum: 1e8d376a2
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:48 ; elapsed = 00:00:19 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4175 ; free virtual = 8136h px� 
[

Phase %s%s
101*constraints2
3.5 2
Small Shape Detail PlacementZ18-101h px� 
X
%s*common2?
=Phase 3.5 Small Shape Detail Placement | Checksum: 2504936c3
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:54 ; elapsed = 00:00:25 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4165 ; free virtual = 8131h px� 
Q

Phase %s%s
101*constraints2
3.6 2
Re-assign LUT pinsZ18-101h px� 
N
%s*common25
3Phase 3.6 Re-assign LUT pins | Checksum: 1d0b2f183
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:54 ; elapsed = 00:00:25 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4165 ; free virtual = 8130h px� 
]

Phase %s%s
101*constraints2
3.7 2 
Pipeline Register OptimizationZ18-101h px� 
Z
%s*common2A
?Phase 3.7 Pipeline Register Optimization | Checksum: 17e8766e7
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:55 ; elapsed = 00:00:25 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4165 ; free virtual = 8130h px� 
J
%s*common21
/Phase 3 Detail Placement | Checksum: 17e8766e7
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:55 ; elapsed = 00:00:25 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4165 ; free virtual = 8130h px� 
e

Phase %s%s
101*constraints2
4 2*
(Post Placement Optimization and Clean-UpZ18-101h px� 
W

Phase %s%s
101*constraints2
4.1 2
Post Commit OptimizationZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
\

Phase %s%s
101*constraints2
4.1.1 2
Post Placement OptimizationZ18-101h px� 
V
APost Placement Optimization Initialization | Checksum: 1be095be4
*commonh px� 
Q

Phase %s%s
101*constraints2

4.1.1.1 2
BUFG InsertionZ18-101h px� 
O

Starting %s Task
103*constraints2
Physical SynthesisZ18-103h px� 
^

Phase %s%s
101*constraints2
1 2#
!Physical Synthesis InitializationZ18-101h px� 
n
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
8Z32-721h px� 
p
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
15.6672
0.000Z32-619h px� 
[
%s*common2B
@Phase 1 Physical Synthesis Initialization | Checksum: 158fe0892
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.65 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4162 ; free virtual = 8128h px� 
�
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2
chip_core/clock_ctrl/Q[0]Z46-33h px� 
�
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2
chip_core/soc/core/int_rstZ46-33h px� 
�
�BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to netlist editing failed: %s.43*	placeflow2
22
02
02
22
02
0Z46-56h px� 
P
%s*common27
5Ending Physical Synthesis Task | Checksum: 158fe0892
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:01 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4162 ; free virtual = 8128h px� 
N
%s*common25
3Phase 4.1.1.1 BUFG Insertion | Checksum: 1be095be4
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:05 ; elapsed = 00:00:30 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4162 ; free virtual = 8128h px� 
e

Phase %s%s
101*constraints2

4.1.1.2 2$
"Post Placement Timing OptimizationZ18-101h px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
15.667Z30-746h px� 
b
%s*common2I
GPhase 4.1.1.2 Post Placement Timing Optimization | Checksum: 1ac8b149f
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:06 ; elapsed = 00:00:30 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4162 ; free virtual = 8128h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:06 ; elapsed = 00:00:30 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4162 ; free virtual = 8128h px� 
T
%s*common2;
9Phase 4.1 Post Commit Optimization | Checksum: 1ac8b149f
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:06 ; elapsed = 00:00:30 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4162 ; free virtual = 8128h px� 
U

Phase %s%s
101*constraints2
4.2 2
Post Placement CleanupZ18-101h px� 
R
%s*common29
7Phase 4.2 Post Placement Cleanup | Checksum: 1ac8b149f
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:06 ; elapsed = 00:00:30 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4162 ; free virtual = 8128h px� 
O

Phase %s%s
101*constraints2
4.3 2
Placer ReportingZ18-101h px� 
[

Phase %s%s
101*constraints2
4.3.1 2
Print Estimated CongestionZ18-101h px� 
�
'Post-Placement Estimated Congestion %s
38*	placeflow2�
�
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                2x2|
|___________|___________________|___________________|
|      South|                1x1|                1x1|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                2x2|
|___________|___________________|___________________|
Z30-612h px� 
X
%s*common2?
=Phase 4.3.1 Print Estimated Congestion | Checksum: 1ac8b149f
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:06 ; elapsed = 00:00:30 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4162 ; free virtual = 8128h px� 
L
%s*common23
1Phase 4.3 Placer Reporting | Checksum: 1ac8b149f
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:06 ; elapsed = 00:00:30 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4162 ; free virtual = 8128h px� 
V

Phase %s%s
101*constraints2
4.4 2
Final Placement CleanupZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012

00:00:002

3149.0002
0.0002
41622
8128Z17-722h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:06 ; elapsed = 00:00:30 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4162 ; free virtual = 8128h px� 
b
%s*common2I
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1f9079412
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:06 ; elapsed = 00:00:30 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4162 ; free virtual = 8128h px� 
D
%s*common2+
)Ending Placer Task | Checksum: 10c9205f1
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:06 ; elapsed = 00:00:30 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4162 ; free virtual = 8128h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
752
42
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
place_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
place_design: 2

00:01:082

00:00:312

3149.0002
0.0002
41622
8128Z17-722h px� 
P
%s4*runtcl24
2Executing : report_io -file caravel_io_placed.rpt
h px� 
�
�report_io: Time (s): cpu = 00:00:00.05 ; elapsed = 00:00:00.04 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4162 ; free virtual = 8128
*commonh px� 
�
%s4*runtcl2h
fExecuting : report_utilization -file caravel_utilization_placed.rpt -pb caravel_utilization_placed.pb
h px� 
m
%s4*runtcl2Q
OExecuting : report_control_sets -verbose -file caravel_control_sets_placed.rpt
h px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.04 ; elapsed = 00:00:00.03 . Memory (MB): peak = 3149.000 ; gain = 0.000 ; free physical = 4161 ; free virtual = 8127
*commonh px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.152
00:00:00.032

3149.0002
0.0002
41612
8128Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PlaceDB: 2

00:00:022
00:00:00.862

3149.0002
0.0002
41262
8119Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

3149.0002
0.0002
41262
8119Z17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote RouteStorage: 2
00:00:00.022
00:00:00.022

3149.0002
0.0002
41262
8119Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Netlist Cache: 2
00:00:00.022
00:00:00.032

3149.0002
0.0002
41262
8122Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Device Cache: 2
00:00:00.012

00:00:002

3149.0002
0.0002
41262
8122Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write Physdb Complete: 2

00:00:022
00:00:00.922

3149.0002
0.0002
41262
8122Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2^
\/home/beandog/senior-design/Caravel_FPGA_2025/CARAVEL/CARAVEL.runs/impl_1/caravel_placed.dcpZ17-1381h px� 


End Record