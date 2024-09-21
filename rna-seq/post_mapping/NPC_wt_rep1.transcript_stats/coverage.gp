
            set terminal png size 600,400 truecolor
            set output "NPC_wt_rep1.transcript_stats/coverage.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Number of mapped bases"
            set xlabel "Coverage"
            set log y
            set style fill solid border -1
            set title "NPC_wt_rep1.transcript.bam.stats" noenhanced
            set xrange [:2]
            plot '-' with lines notitle
        1	185050
2	1300
3	50
end
