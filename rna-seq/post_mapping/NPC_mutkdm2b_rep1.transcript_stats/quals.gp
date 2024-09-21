
            set terminal png size 600,400 truecolor
            set output "NPC_mutkdm2b_rep1.transcript_stats/quals.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Average Quality"
            set xlabel "Cycle"
            set yrange [0:50]
            set title "NPC_mutkdm2b_rep1.transcript.bam.stats" noenhanced
            plot '-' using 1:2 with lines title 'Forward reads' 
        1	32.47
2	32.66
3	36.79
4	37.26
5	37.44
6	40.97
7	41.05
8	41.14
9	41.15
10	41.16
11	41.19
12	41.17
13	41.16
14	41.16
15	41.15
16	41.15
17	41.10
18	41.13
19	41.13
20	41.12
21	41.12
22	41.11
23	41.11
24	41.12
25	41.11
26	41.07
27	41.06
28	41.06
29	41.04
30	41.04
31	41.05
32	41.05
33	41.04
34	41.05
35	41.05
36	41.05
37	41.05
38	41.05
39	41.05
40	41.04
41	41.03
42	41.03
43	41.03
44	41.03
45	41.03
46	41.02
47	41.02
48	40.98
49	41.00
50	41.01
end
