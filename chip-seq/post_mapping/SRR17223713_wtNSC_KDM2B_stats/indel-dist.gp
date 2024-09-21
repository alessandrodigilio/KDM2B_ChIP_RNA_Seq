
        set terminal png size 600,400 truecolor
        set output "SRR17223713_wtNSC_KDM2B_stats/indel-dist.png"
        set grid xtics ytics y2tics back lc rgb "#cccccc"
        set style line 1 linetype 1  linecolor rgb "red"
        set style line 2 linetype 2  linecolor rgb "black"
        set style line 3 linetype 3  linecolor rgb "green"
        set style increment user
        set ylabel "Indel count [log]"
        set xlabel "Indel length"
        set y2label "Insertions/Deletions ratio"
        set log y
        set y2tics nomirror
        set ytics nomirror
        set title "SRR17223713_wtNSC_KDM2B.bam.stats" noenhanced
        plot '-' w l ti 'Insertions', '-' w l ti 'Deletions', '-' axes x1y2 w l ti "Ins/Dels ratio"
    1	293633
2	67591
3	17577
4	14044
5	4062
6	3163
7	1111
8	1330
9	483
10	915
11	204
12	393
13	136
14	109
15	85
16	53
17	27
18	41
19	15
20	7
21	2
22	2
23	0
24	0
25	0
26	0
27	0
28	0
29	0
end
1	508043
2	127457
3	23864
4	25166
5	6027
6	6967
7	2100
8	5763
9	2520
10	1578
11	660
12	1227
13	608
14	599
15	215
16	340
17	143
18	233
19	86
20	118
21	41
22	35
23	27
24	12
25	12
26	1
27	2
28	2
29	1
end
1	0.577969
2	0.530304
3	0.736549
4	0.558055
5	0.673967
6	0.453997
7	0.529048
8	0.230783
9	0.191667
10	0.579848
11	0.309091
12	0.320293
13	0.223684
14	0.181970
15	0.395349
16	0.155882
17	0.188811
18	0.175966
19	0.174419
20	0.059322
21	0.048780
22	0.057143
23	0.000000
24	0.000000
25	0.000000
26	0.000000
27	0.000000
28	0.000000
29	0.000000
end
