# peaks coverage

# set wd
setwd("~/project_track1/ChIP-Seq")

# libraries
library(GenomicRanges)
library(rtracklayer)
library(GenomicAlignments)

# import bam files
wt_NPC_input1_bam <- readGAlignments("SRR17223711_wtNPC_input.bam")
KDM2B_rep1_bam <- readGAlignments("SRR17223713_wtNSC_KDM2B.bam")

KO_KDM2B_input2_bam <- readGAlignments("SRR17223712_kdm2bcKONPC_input.bam")
KO_KDM2B_KDM2B_rep2_bam <- readGAlignments("SRR17223714_kdm2bcKONPC_KDM2B.bam")

# check the length
print(paste("Length of wt_NPC_input1_bam:", length(wt_NPC_input1_bam)))
print(paste("Length of KDM2B_rep1_bam:", length(KDM2B_rep1_bam)))
print(paste("Length of KO_KDM2B_input2_bam:", length(KO_KDM2B_input2_bam)))
print(paste("Length of KO_KDM2B_KDM2B_rep2_bam:", length(KO_KDM2B_KDM2B_rep2_bam)))

# compute library normalization factors
NF <- list()

NF$rep1_input1 <- length(KDM2B_rep1_bam) / length(wt_NPC_input1_bam)
NF$rep1_rep2 <- length(KDM2B_rep1_bam) / length(KO_KDM2B_KDM2B_rep2_bam)
NF$rep1_input2 <- length(KDM2B_rep1_bam) / length(KO_KDM2B_input2_bam)

NF

# import idr peaks
idr_peaks <- import("kdm2b_idr.narrowPeak", format = "bed", colnames = c("chrom", "start", "end"))
summary(width(idr_peaks))

# get summit offset columns in GRanges object
mcols(idr_peaks)$summit <- read.table("kdm2b_idr.narrowPeak")[,10]
mcols(idr_peaks)$w <- width(idr_peaks)
idr_peaks

# create a new peaks object with standard widths (anchored on summits)
idr_peaks_summit <- flank(shift(idr_peaks, shift = idr_peaks$summit), width = 1000, both = TRUE)
idr_peaks_summit$summits <- NULL
idr_peaks_summit$w <- width(idr_peaks_summit)
idr_peaks_summit

# how many seqlevels we have in the allignment and peak files?
seqlevels(idr_peaks_summit)
seqlevels(wt_NPC_input1_bam)
seqlevels(KDM2B_rep1_bam)
seqlevels(KO_KDM2B_input2_bam)
seqlevels(KO_KDM2B_KDM2B_rep2_bam)

# in order to have the same seqlevels (same chromosomes) we remove the unwanted and unshared chroms
seqlevels(wt_NPC_input1_bam, pruning.mode = "coarse") <- seqlevels(KDM2B_rep1_bam,pruning.mode = "coarse") <-
  seqlevels(KO_KDM2B_input2_bam, pruning.mode = "coarse") <- seqlevels(KO_KDM2B_KDM2B_rep2_bam, pruning.mode = "coarse") <-
  seqlevels(idr_peaks_summit)

# now we have the same seqlevels for all the objects
seqlevels(idr_peaks_summit)
seqlevels(wt_NPC_input1_bam)
seqlevels(KDM2B_rep1_bam)
seqlevels(KO_KDM2B_input2_bam)
seqlevels(KO_KDM2B_KDM2B_rep2_bam)

# compute coverage from the BAM files
cov_wt_NPC_input1 <- coverage(wt_NPC_input1_bam)
cov_KDM2B_rep1 <- coverage(KDM2B_rep1_bam)
cov_KO_KDM2B_input2 <- coverage(KO_KDM2B_input2_bam)
cov_KO_KDM2B_KDM2B_rep2 <- coverage(KO_KDM2B_KDM2B_rep2_bam)

# get Views on peak regions
peaks_cov_wt_NPC_input1 <- Views(cov_wt_NPC_input1, idr_peaks_summit)
peaks_cov_KDM2B_rep1 <- Views(cov_KDM2B_rep1, idr_peaks_summit)
peaks_cov_KO_KDM2B_input2 <- Views(cov_KO_KDM2B_input2, idr_peaks_summit)
peaks_cov_KO_KDM2B_KDM2B_rep2 <- Views(cov_KO_KDM2B_KDM2B_rep2, idr_peaks_summit)

# convert Views to matrix so we can use colmeans function and normalise for library size
peaks_allcov_input1 <- as.matrix(peaks_cov_wt_NPC_input1) * NF$rep1_input1
peaks_allcov_rep1 <- as.matrix(peaks_cov_KDM2B_rep1)

peaks_allcov_input2 <- as.matrix(peaks_cov_KO_KDM2B_input2) * NF$rep1_input2
peaks_allcov_rep2 <- as.matrix(peaks_cov_KO_KDM2B_KDM2B_rep2) * NF$rep1_rep2

peaks_meancov_input1 <- colMeans(peaks_allcov_input1)
peaks_meancov_rep1 <- colMeans(peaks_allcov_rep1)

peaks_meancov_input2 <- colMeans(peaks_allcov_input2)
peaks_meancov_rep2 <- colMeans(peaks_allcov_rep2)

# plot coverages on peaks
plot(peaks_meancov_rep1, type = "h", x = -1000:999, col = "blue", xlab = "Position long the peaks", ylab = "Mean coverage")
points(peaks_meancov_input1, type = "h", x = -1000:999, col = "red")

plot(peaks_meancov_rep2, type = "h", x = -1000:999, col = "blue", xlab = "Position long the peaks", ylab = "Mean coverage")
points(peaks_meancov_input2, type = "h", x = -1000:999, col = "red")

# boxplots
boxplot(peaks_meancov_rep1, peaks_meancov_input1, peaks_meancov_rep2, peaks_meancov_input2, 
        col = rep(c("blue", "red"), 2), outline = FALSE, names = c("rep1", "input1", "rep2", "input2"))

# check the coverage outside the peak regions
shifted_idr_peaks_summits <- shift(idr_peaks_summit, 4000) # shift every peak of 1k positions

# get Views on shifted peak regions
s_peaks_cov_wt_NPC_input1 <- Views(cov_wt_NPC_input1, shifted_idr_peaks_summits)
s_peaks_cov_KDM2B_rep1 <- Views(cov_KDM2B_rep1, shifted_idr_peaks_summits)
s_peaks_cov_KO_KDM2B_input2 <- Views(cov_KO_KDM2B_input2, shifted_idr_peaks_summits)
s_peaks_cov_KO_KDM2B_KDM2B_rep2 <- Views(cov_KO_KDM2B_KDM2B_rep2, shifted_idr_peaks_summits)

# convert Views to matrix so we can use colmeans function and normalise for library size
s_peaks_allcov_input1 <- as.matrix(s_peaks_cov_wt_NPC_input1) * NF$rep1_input1
s_peaks_allcov_rep1 <- as.matrix(s_peaks_cov_KDM2B_rep1)

s_peaks_allcov_input2 <- as.matrix(s_peaks_cov_KO_KDM2B_input2) * NF$rep1_input2
s_peaks_allcov_rep2 <- as.matrix(s_peaks_cov_KO_KDM2B_KDM2B_rep2) * NF$rep1_rep2

s_peaks_meancov_input1 <- colMeans(s_peaks_allcov_input1)
s_peaks_meancov_rep1 <- colMeans(s_peaks_allcov_rep1)

s_peaks_meancov_input2 <- colMeans(s_peaks_allcov_input2)
s_peaks_meancov_rep2 <- colMeans(s_peaks_allcov_rep2)

# look at the coverage
# plot coverages 
plot(s_peaks_meancov_rep1, type = "h", x = -1000:999, col = "blue", xlab = "Position long the peaks", ylab = "Mean coverage")
points(s_peaks_meancov_input1, type = "h", x = -1000:999, col = "red")

plot(s_peaks_meancov_rep2, type = "h", x = -1000:999, col = "blue", xlab = "Position long the peaks", ylab = "Mean coverage")
points(s_peaks_meancov_input2, type = "h", x = -1000:999, col = "red")

# boxplots
boxplot(s_peaks_meancov_rep1, s_peaks_meancov_input1, s_peaks_meancov_rep2, s_peaks_meancov_input2, 
        col = rep(c("blue", "red"), 2), outline = FALSE, names = c("rep1", "input1", "rep2", "input2"))









