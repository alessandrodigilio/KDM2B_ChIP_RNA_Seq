
            set terminal png size 600,400 truecolor
            set output "NPC_wt_rep1.transcript_stats/gc-content.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set title "NPC_wt_rep1.transcript.bam.stats" noenhanced
            set ylabel "Normalized Frequency"
            set xlabel "GC Content [%]"
            set yrange [0:1.1]
            set label sprintf("%.1f",54.77) at 54.77,1 front offset 1,0
            plot '-' smooth csplines with lines lc 1 title 'First fragments' 
        0	0.002714
2	0.000107
4	0.000043
6	0.000065
8	0.000108
10	0.000340
12	0.000750
14	0.001560
16	0.003081
18	0.006116
20	0.011283
22	0.018919
24	0.031460
26	0.047799
28	0.070143
30	0.099838
32	0.136617
34	0.189101
36	0.249496
38	0.324230
40	0.416742
42	0.514399
44	0.610944
46	0.731648
48	0.838496
50	0.919430
52	0.975918
54	1.000000
56	0.967634
58	0.893807
60	0.781661
62	0.644403
64	0.492510
66	0.351443
68	0.240118
70	0.158865
72	0.101581
74	0.067347
76	0.045582
78	0.028908
80	0.020716
82	0.011715
84	0.006823
86	0.003601
88	0.001657
90	0.001642
92	0.000274
94	0.000030
96	0.000013
98	0.000001
end
