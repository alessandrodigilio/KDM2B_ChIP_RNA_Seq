
            set terminal png size 600,500 truecolor
            set output "SRR17223712_kdm2bcKONPC_input_stats/gc-depth.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Mapped depth"
            set xlabel "Percentile of mapped sequence ordered by GC content"
            set x2label "GC Content [%]"
            set title "SRR17223712_kdm2bcKONPC_input.bam.stats" noenhanced
            set x2tics ("30" 14.286,"40" 25.000,"50" 78.571)
            set xtics nomirror
            set xrange [0.1:99.9]

            plot '-' using 1:2:3 with filledcurve lt 1 lc rgb "#dedede" t '10-90th percentile' , \
                 '-' using 1:2:3 with filledcurve lt 1 lc rgb "#bbdeff" t '25-75th percentile' , \
                 '-' using 1:2 with lines lc rgb "#0084ff" t 'Median'
        7.143	0.000	0.000
10.714	0.005	0.005
14.286	0.005	0.005
17.857	0.005	0.005
25.000	0.005	0.005
35.714	0.005	0.005
39.286	0.005	0.005
42.857	0.005	0.005
57.143	0.005	0.005
64.286	0.005	0.005
67.857	0.005	0.005
75.000	0.005	0.005
78.571	0.005	0.005
82.143	0.005	0.005
85.714	0.005	0.005
92.857	0.005	0.005
96.429	0.005	0.005
100.000	0.005	0.005
end
7.143	0.000	0.000
10.714	0.005	0.005
14.286	0.005	0.005
17.857	0.005	0.005
25.000	0.005	0.005
35.714	0.005	0.005
39.286	0.005	0.005
42.857	0.005	0.005
57.143	0.005	0.005
64.286	0.005	0.005
67.857	0.005	0.005
75.000	0.005	0.005
78.571	0.005	0.005
82.143	0.005	0.005
85.714	0.005	0.005
92.857	0.005	0.005
96.429	0.005	0.005
100.000	0.005	0.005
end
7.143	0.000
10.714	0.005
14.286	0.005
17.857	0.005
25.000	0.005
35.714	0.005
39.286	0.005
42.857	0.005
57.143	0.005
64.286	0.005
67.857	0.005
75.000	0.005
78.571	0.005
82.143	0.005
85.714	0.005
92.857	0.005
96.429	0.005
100.000	0.005
end
