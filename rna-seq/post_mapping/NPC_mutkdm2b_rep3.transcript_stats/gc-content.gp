
            set terminal png size 600,400 truecolor
            set output "NPC_mutkdm2b_rep3.transcript_stats/gc-content.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set title "NPC_mutkdm2b_rep3.transcript.bam.stats" noenhanced
            set ylabel "Normalized Frequency"
            set xlabel "GC Content [%]"
            set yrange [0:1.1]
            set label sprintf("%.1f",54.77) at 54.77,1 front offset 1,0
            plot '-' smooth csplines with lines lc 1 title 'First fragments' 
        0	0.002793
2	0.000101
4	0.000051
6	0.000047
8	0.000110
10	0.000311
12	0.000661
14	0.001370
16	0.002925
18	0.005611
20	0.010801
22	0.017589
24	0.029864
26	0.045760
28	0.066670
30	0.096737
32	0.133817
34	0.184613
36	0.243897
38	0.313269
40	0.401577
42	0.498359
44	0.588657
46	0.710806
48	0.807086
50	0.914213
52	0.968425
54	1.000000
56	0.973116
58	0.906534
60	0.797434
62	0.662811
64	0.507190
66	0.369867
68	0.254278
70	0.169942
72	0.108923
74	0.073796
76	0.050185
78	0.032566
80	0.022235
82	0.012839
84	0.007289
86	0.003652
88	0.001511
90	0.000816
92	0.000163
94	0.000048
96	0.000023
98	0.000001
end
