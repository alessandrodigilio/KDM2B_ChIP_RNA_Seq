
            set terminal png size 600,400 truecolor
            set output "SRR17223712_kdm2bcKONPC_input_stats/quals.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Average Quality"
            set xlabel "Cycle"
            set yrange [0:50]
            set title "SRR17223712_kdm2bcKONPC_input.bam.stats" noenhanced
            plot '-' using 1:2 with lines title 'Forward reads' 
        1	37.16
2	37.29
3	37.40
4	37.45
5	37.47
6	37.49
7	37.47
8	37.49
9	37.49
10	37.47
11	37.47
12	37.48
13	37.46
14	37.46
15	37.45
16	37.46
17	37.45
18	37.44
19	37.44
20	37.41
21	37.43
22	37.40
23	37.41
24	37.39
25	37.37
26	37.34
27	37.33
28	37.33
29	37.32
30	37.30
31	37.30
32	37.29
33	37.28
34	37.26
35	37.25
36	37.23
37	37.22
38	37.22
39	37.22
40	37.19
41	37.15
42	37.17
43	36.59
44	37.04
45	37.16
46	37.10
47	37.07
48	37.13
49	37.10
50	37.09
51	37.10
52	37.11
53	36.99
54	37.05
55	36.92
56	36.92
57	36.90
58	36.75
59	37.00
60	36.92
61	36.75
62	36.84
63	36.96
64	36.77
65	36.86
66	36.74
67	36.63
68	36.22
69	36.46
70	36.76
71	36.87
72	36.91
73	36.92
74	36.94
75	36.92
76	36.90
77	36.90
78	36.90
79	36.90
80	36.89
81	36.87
82	36.88
83	36.86
84	36.85
85	36.83
86	36.82
87	36.81
88	36.82
89	36.81
90	36.79
91	36.75
92	36.76
93	36.75
94	36.75
95	36.73
96	36.72
97	36.74
98	36.72
99	36.71
100	36.70
end
