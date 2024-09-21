
            set terminal png size 600,400 truecolor
            set output "NPC_mutkdm2b_rep2.transcript_stats/quals.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Average Quality"
            set xlabel "Cycle"
            set yrange [0:50]
            set title "NPC_mutkdm2b_rep2.transcript.bam.stats" noenhanced
            plot '-' using 1:2 with lines title 'Forward reads' 
        1	32.48
2	32.67
3	36.80
4	37.26
5	37.44
6	40.98
7	41.06
8	41.15
9	41.16
10	41.16
11	41.19
12	41.18
13	41.16
14	41.17
15	41.16
16	41.16
17	41.11
18	41.14
19	41.14
20	41.12
21	41.12
22	41.12
23	41.11
24	41.12
25	41.12
26	41.07
27	41.07
28	41.07
29	41.05
30	41.04
31	41.05
32	41.05
33	41.05
34	41.05
35	41.05
36	41.05
37	41.05
38	41.05
39	41.05
40	41.04
41	41.04
42	41.04
43	41.03
44	41.03
45	41.04
46	41.02
47	41.02
48	40.98
49	41.00
50	41.01
end
