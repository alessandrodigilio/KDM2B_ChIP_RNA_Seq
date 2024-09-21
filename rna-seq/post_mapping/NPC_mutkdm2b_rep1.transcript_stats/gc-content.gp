
            set terminal png size 600,400 truecolor
            set output "NPC_mutkdm2b_rep1.transcript_stats/gc-content.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set title "NPC_mutkdm2b_rep1.transcript.bam.stats" noenhanced
            set ylabel "Normalized Frequency"
            set xlabel "GC Content [%]"
            set yrange [0:1.1]
            set label sprintf("%.1f",54.77) at 54.77,1 front offset 1,0
            plot '-' smooth csplines with lines lc 1 title 'First fragments' 
        0	0.001524
2	0.000094
4	0.000035
6	0.000030
8	0.000100
10	0.000243
12	0.000560
14	0.001132
16	0.002367
18	0.004709
20	0.009152
22	0.015188
24	0.025880
26	0.039213
28	0.058052
30	0.084085
32	0.116339
34	0.162013
36	0.215933
38	0.282849
40	0.367079
42	0.460535
44	0.552918
46	0.676156
48	0.776676
50	0.889754
52	0.955491
54	1.000000
56	0.980824
58	0.926015
60	0.819473
62	0.690144
64	0.532349
66	0.385054
68	0.264854
70	0.175186
72	0.110531
74	0.071033
76	0.045533
78	0.028071
80	0.018023
82	0.009378
84	0.004750
86	0.002179
88	0.000908
90	0.000629
92	0.000121
94	0.000019
96	0.000007
98	0.000001
end
