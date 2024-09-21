
            set terminal png size 600,400 truecolor
            set output "SRR17223712_kdm2bcKONPC_input_stats/coverage.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Number of mapped bases"
            set xlabel "Coverage"
            set log y
            set style fill solid border -1
            set title "SRR17223712_kdm2bcKONPC_input.bam.stats" noenhanced
            set xrange [:1]
            plot '-' with lines notitle
        1	2620
end
