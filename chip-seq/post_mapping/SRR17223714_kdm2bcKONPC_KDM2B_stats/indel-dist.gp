
        set terminal png size 600,400 truecolor
        set output "SRR17223714_kdm2bcKONPC_KDM2B_stats/indel-dist.png"
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
        set title "SRR17223714_kdm2bcKONPC_KDM2B.bam.stats" noenhanced
        plot '-' w l ti 'Insertions', '-' w l ti 'Deletions', '-' axes x1y2 w l ti "Ins/Dels ratio"
    1	118223
2	27068
3	6941
4	5736
5	2099
6	1206
7	449
8	531
9	201
10	289
11	79
12	124
13	62
14	37
15	29
16	17
17	7
18	6
19	3
20	2
21	2
22	0
23	0
24	0
25	0
26	0
27	0
end
1	190756
2	47712
3	9815
4	9533
5	2274
6	2515
7	793
8	1927
9	799
10	531
11	210
12	409
13	195
14	203
15	69
16	130
17	49
18	79
19	31
20	35
21	17
22	18
23	5
24	8
25	1
26	1
27	2
end
1	0.619760
2	0.567321
3	0.707183
4	0.601699
5	0.923043
6	0.479523
7	0.566204
8	0.275558
9	0.251564
10	0.544256
11	0.376190
12	0.303178
13	0.317949
14	0.182266
15	0.420290
16	0.130769
17	0.142857
18	0.075949
19	0.096774
20	0.057143
21	0.117647
22	0.000000
23	0.000000
24	0.000000
25	0.000000
26	0.000000
27	0.000000
end
