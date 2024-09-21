
            set terminal png size 600,500 truecolor
            set output "SRR17223711_wtNPC_input_stats/gc-depth.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Mapped depth"
            set xlabel "Percentile of mapped sequence ordered by GC content"
            set x2label "GC Content [%]"
            set title "SRR17223711_wtNPC_input.bam.stats" noenhanced
            set x2tics ("30" 33.333,"40" 50.000,"50" 75.000)
            set xtics nomirror
            set xrange [0.1:99.9]

            plot '-' using 1:2:3 with filledcurve lt 1 lc rgb "#dedede" t '10-90th percentile' , \
                 '-' using 1:2:3 with filledcurve lt 1 lc rgb "#bbdeff" t '25-75th percentile' , \
                 '-' using 1:2 with lines lc rgb "#0084ff" t 'Median'
        16.667	0.000	0.000
25.000	0.005	0.005
33.333	0.005	0.005
41.667	0.005	0.005
50.000	0.005	0.005
58.333	0.005	0.005
66.667	0.005	0.005
75.000	0.005	0.005
83.333	0.005	0.005
100.000	0.005	0.005
end
16.667	0.000	0.000
25.000	0.005	0.005
33.333	0.005	0.005
41.667	0.005	0.005
50.000	0.005	0.005
58.333	0.005	0.005
66.667	0.005	0.005
75.000	0.005	0.005
83.333	0.005	0.005
100.000	0.005	0.005
end
16.667	0.000
25.000	0.005
33.333	0.005
41.667	0.005
50.000	0.005
58.333	0.005
66.667	0.005
75.000	0.005
83.333	0.005
100.000	0.005
end
