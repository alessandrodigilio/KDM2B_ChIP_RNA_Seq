
        set terminal png size 600,400 truecolor
        set output "SRR17223711_wtNPC_input_stats/indel-dist.png"
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
        set title "SRR17223711_wtNPC_input.bam.stats" noenhanced
        plot '-' w l ti 'Insertions', '-' w l ti 'Deletions', '-' axes x1y2 w l ti "Ins/Dels ratio"
    1	198483
2	42449
3	11917
4	10918
5	2722
6	2020
7	702
8	873
9	336
10	420
11	120
12	191
13	98
14	86
15	51
16	39
17	16
18	35
19	6
20	5
21	1
22	0
23	0
24	0
25	0
26	0
27	0
28	0
29	0
end
1	347289
2	80936
3	17777
4	19020
5	4515
6	4328
7	1330
8	2835
9	1361
10	1015
11	427
12	753
13	315
14	330
15	119
16	235
17	115
18	133
19	66
20	61
21	21
22	33
23	17
24	9
25	5
26	3
27	2
28	1
29	1
end
1	0.571521
2	0.524476
3	0.670361
4	0.574027
5	0.602879
6	0.466728
7	0.527820
8	0.307937
9	0.246877
10	0.413793
11	0.281030
12	0.253652
13	0.311111
14	0.260606
15	0.428571
16	0.165957
17	0.139130
18	0.263158
19	0.090909
20	0.081967
21	0.047619
22	0.000000
23	0.000000
24	0.000000
25	0.000000
26	0.000000
27	0.000000
28	0.000000
29	0.000000
end
