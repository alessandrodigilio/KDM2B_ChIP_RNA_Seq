
            set terminal png size 600,500 truecolor
            set output "SRR17223714_kdm2bcKONPC_KDM2B_stats/gc-depth.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Mapped depth"
            set xlabel "Percentile of mapped sequence ordered by GC content"
            set x2label "GC Content [%]"
            set title "SRR17223714_kdm2bcKONPC_KDM2B.bam.stats" noenhanced
            set x2tics ("30" 30.769,"40" 38.462,"50" 53.846)
            set xtics nomirror
            set xrange [0.1:99.9]

            plot '-' using 1:2:3 with filledcurve lt 1 lc rgb "#dedede" t '10-90th percentile' , \
                 '-' using 1:2:3 with filledcurve lt 1 lc rgb "#bbdeff" t '25-75th percentile' , \
                 '-' using 1:2 with lines lc rgb "#0084ff" t 'Median'
        15.385	0.000	0.000
23.077	0.005	0.005
30.769	0.005	0.005
38.462	0.005	0.005
46.154	0.005	0.005
53.846	0.005	0.005
61.538	0.005	0.005
76.923	0.005	0.005
84.615	0.005	0.005
92.308	0.005	0.005
100.000	0.005	0.005
end
15.385	0.000	0.000
23.077	0.005	0.005
30.769	0.005	0.005
38.462	0.005	0.005
46.154	0.005	0.005
53.846	0.005	0.005
61.538	0.005	0.005
76.923	0.005	0.005
84.615	0.005	0.005
92.308	0.005	0.005
100.000	0.005	0.005
end
15.385	0.000
23.077	0.005
30.769	0.005
38.462	0.005
46.154	0.005
53.846	0.005
61.538	0.005
76.923	0.005
84.615	0.005
92.308	0.005
100.000	0.005
end
