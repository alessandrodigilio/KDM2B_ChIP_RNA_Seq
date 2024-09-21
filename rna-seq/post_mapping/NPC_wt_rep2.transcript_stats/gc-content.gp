
            set terminal png size 600,400 truecolor
            set output "NPC_wt_rep2.transcript_stats/gc-content.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set title "NPC_wt_rep2.transcript.bam.stats" noenhanced
            set ylabel "Normalized Frequency"
            set xlabel "GC Content [%]"
            set yrange [0:1.1]
            set label sprintf("%.1f",54.77) at 54.77,1 front offset 1,0
            plot '-' smooth csplines with lines lc 1 title 'First fragments' 
        0	0.003342
2	0.000125
4	0.000055
6	0.000055
8	0.000148
10	0.000385
12	0.000820
14	0.001693
16	0.003293
18	0.006749
20	0.012762
22	0.021434
24	0.035391
26	0.053462
28	0.076924
30	0.110239
32	0.149526
34	0.205878
36	0.269829
38	0.343860
40	0.435616
42	0.537774
44	0.627074
46	0.748432
48	0.837608
50	0.923551
52	0.977347
54	1.000000
56	0.970416
58	0.884819
60	0.768108
62	0.630387
64	0.477380
66	0.336696
68	0.226995
70	0.147016
72	0.091470
74	0.058736
76	0.038180
78	0.023840
80	0.016474
82	0.008673
84	0.004653
86	0.002191
88	0.000921
90	0.000981
92	0.000176
94	0.000023
96	0.000015
98	0.000002
end
