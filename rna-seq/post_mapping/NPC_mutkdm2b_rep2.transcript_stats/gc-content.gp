
            set terminal png size 600,400 truecolor
            set output "NPC_mutkdm2b_rep2.transcript_stats/gc-content.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set title "NPC_mutkdm2b_rep2.transcript.bam.stats" noenhanced
            set ylabel "Normalized Frequency"
            set xlabel "GC Content [%]"
            set yrange [0:1.1]
            set label sprintf("%.1f",54.77) at 54.77,1 front offset 1,0
            plot '-' smooth csplines with lines lc 1 title 'First fragments' 
        0	0.001817
2	0.000076
4	0.000040
6	0.000039
8	0.000089
10	0.000246
12	0.000563
14	0.001094
16	0.002292
18	0.004465
20	0.008611
22	0.014129
24	0.023904
26	0.036378
28	0.053906
30	0.078816
32	0.110022
34	0.154914
36	0.207527
38	0.272369
40	0.358252
42	0.451209
44	0.545730
46	0.669004
48	0.772290
50	0.877144
52	0.961525
54	1.000000
56	0.983217
58	0.926463
60	0.822754
62	0.691161
64	0.532697
66	0.389088
68	0.269984
70	0.178459
72	0.115888
74	0.076904
76	0.052747
78	0.033435
80	0.021884
82	0.012158
84	0.006772
86	0.003425
88	0.001270
90	0.000662
92	0.000131
94	0.000036
96	0.000018
98	0.000002
end
