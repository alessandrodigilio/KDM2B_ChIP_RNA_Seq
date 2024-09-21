
        set terminal png size 600,400 truecolor
        set output "SRR17223712_kdm2bcKONPC_input_stats/indel-dist.png"
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
        set title "SRR17223712_kdm2bcKONPC_input.bam.stats" noenhanced
        plot '-' w l ti 'Insertions', '-' w l ti 'Deletions', '-' axes x1y2 w l ti "Ins/Dels ratio"
    1	161491
2	35373
3	9526
4	8953
5	2158
6	1570
7	547
8	703
9	275
10	328
11	103
12	171
13	79
14	70
15	38
16	38
17	17
18	23
19	3
20	2
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
1	287541
2	68215
3	14983
4	16402
5	4032
6	3680
7	1134
8	2370
9	1203
10	785
11	355
12	531
13	265
14	296
15	86
16	188
17	85
18	115
19	50
20	43
21	24
22	20
23	10
24	8
25	4
26	1
27	2
28	1
29	1
end
1	0.561628
2	0.518552
3	0.635787
4	0.545848
5	0.535218
6	0.426630
7	0.482363
8	0.296624
9	0.228595
10	0.417834
11	0.290141
12	0.322034
13	0.298113
14	0.236486
15	0.441860
16	0.202128
17	0.200000
18	0.200000
19	0.060000
20	0.046512
21	0.041667
22	0.000000
23	0.000000
24	0.000000
25	0.000000
26	0.000000
27	0.000000
28	0.000000
29	0.000000
end
