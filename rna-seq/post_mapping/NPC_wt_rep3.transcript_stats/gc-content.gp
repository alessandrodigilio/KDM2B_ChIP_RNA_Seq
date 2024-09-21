
            set terminal png size 600,400 truecolor
            set output "NPC_wt_rep3.transcript_stats/gc-content.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set title "NPC_wt_rep3.transcript.bam.stats" noenhanced
            set ylabel "Normalized Frequency"
            set xlabel "GC Content [%]"
            set yrange [0:1.1]
            set label sprintf("%.1f",54.77) at 54.77,1 front offset 1,0
            plot '-' smooth csplines with lines lc 1 title 'First fragments' 
        0	0.000816
2	0.000058
4	0.000034
6	0.000019
8	0.000075
10	0.000184
12	0.000404
14	0.000848
16	0.001833
18	0.003882
20	0.007551
22	0.013220
24	0.022738
26	0.036102
28	0.054866
30	0.081556
32	0.114806
34	0.163822
36	0.219121
38	0.287025
40	0.375611
42	0.470530
44	0.562949
46	0.685517
48	0.781821
50	0.881398
52	0.954437
54	1.000000
56	0.975434
58	0.916772
60	0.810603
62	0.680826
64	0.524699
66	0.379279
68	0.262320
70	0.174431
72	0.113050
74	0.074012
76	0.049678
78	0.031763
80	0.021230
82	0.011374
84	0.005825
86	0.002754
88	0.001089
90	0.000647
92	0.000121
94	0.000021
96	0.000016
98	0.000004
end
