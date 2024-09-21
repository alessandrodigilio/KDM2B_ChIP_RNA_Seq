
            set terminal png size 600,400 truecolor
            set output "NPC_wt_rep3.transcript_stats/quals.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Average Quality"
            set xlabel "Cycle"
            set yrange [0:50]
            set title "NPC_wt_rep3.transcript.bam.stats" noenhanced
            plot '-' using 1:2 with lines title 'Forward reads' 
        1	32.49
2	32.68
3	36.82
4	37.28
5	37.45
6	41.00
7	41.08
8	41.17
9	41.18
10	41.18
11	41.21
12	41.19
13	41.18
14	41.18
15	41.18
16	41.17
17	41.13
18	41.15
19	41.15
20	41.14
21	41.14
22	41.13
23	41.13
24	41.14
25	41.13
26	41.09
27	41.08
28	41.08
29	41.06
30	41.06
31	41.07
32	41.07
33	41.06
34	41.07
35	41.07
36	41.07
37	41.08
38	41.07
39	41.07
40	41.06
41	41.06
42	41.06
43	41.06
44	41.06
45	41.06
46	41.05
47	41.04
48	41.00
49	41.02
50	41.03
end
