
            set terminal png size 600,400 truecolor
            set output "NPC_mutkdm2b_rep3.transcript_stats/quals.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Average Quality"
            set xlabel "Cycle"
            set yrange [0:50]
            set title "NPC_mutkdm2b_rep3.transcript.bam.stats" noenhanced
            plot '-' using 1:2 with lines title 'Forward reads' 
        1	32.48
2	32.67
3	36.81
4	37.27
5	37.45
6	40.99
7	41.07
8	41.16
9	41.17
10	41.17
11	41.20
12	41.18
13	41.17
14	41.17
15	41.17
16	41.17
17	41.11
18	41.14
19	41.14
20	41.13
21	41.13
22	41.13
23	41.12
24	41.13
25	41.12
26	41.08
27	41.07
28	41.07
29	41.05
30	41.04
31	41.06
32	41.06
33	41.05
34	41.06
35	41.06
36	41.06
37	41.06
38	41.06
39	41.06
40	41.05
41	41.04
42	41.04
43	41.04
44	41.04
45	41.05
46	41.03
47	41.03
48	40.99
49	41.01
50	41.02
end
