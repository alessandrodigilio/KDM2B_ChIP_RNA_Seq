# project: track 1
# load packages
library(edgeR)
library(ggplot2)
library(vidger)
library(ggVennDiagram)
library(writexl)


# set wd
setwd("~/project_track1")

# import samples (genes.results files)
NPC_wt_1 <- read.table("NPC_wt_rep1.genes.results", header = TRUE, sep = "\t", row.names = 1)
NPC_wt_2 <- read.table("NPC_wt_rep2.genes.results", header = TRUE, sep = "\t", row.names = 1 )
NPC_wt_3 <- read.table("NPC_wt_rep3.genes.results", header = TRUE, sep ="\t", row.names = 1 )
mutkdm2b_1 <- read.table("NPC_mutkdm2b_rep1.genes.results", header = TRUE, sep ="\t", row.names = 1)
mutkdm2b_2 <- read.table("NPC_mutkdm2b_rep2.genes.results", header = TRUE, sep ="\t", row.names = 1)
mutkdm2b_3 <- read.table("NPC_mutkdm2b_rep3.genes.results", header = TRUE, sep ="\t", row.names = 1)

# create expected counts table from RSEM expected counts of every sample
expected_counts_table <- cbind(NPC_wt_1[,4], NPC_wt_2[,4], NPC_wt_3[,4], mutkdm2b_1[,4], mutkdm2b_2[,4], mutkdm2b_3[,4])

# rename columns and rows
colnames(expected_counts_table) <- c("NPC_wt_1", "NPC_wt_2", "NPC_wt_3", "mutkdm2b_1", "mutkdm2b_2", "mutkdm2b_3")
rownames(expected_counts_table) <- row.names(NPC_wt_1)
head(expected_counts_table) # original table

# create DGEList object from expected counts table
DG <- DGEList(counts = expected_counts_table, group = c(rep("NPC_wt", 3), rep("mut_kdm2b", 3)), 
              samples = colnames(expected_counts_table), remove.zeros = T) # removing 6673 rows with all zero counts
head(DG$counts) # edgeR internal counts table
head(cpm(DG)) # CPM transformed table: CPM = (Counts x 106)/Tot_Mapped_Reads

# check dimensions
dim(expected_counts_table) # 25108, 6
dim(cpm(DG)) # 18435, 6

# remove genes with very low expression (keep those with at least 10 cpm in at least 2 samples)
DG_keep <- rowSums(cpm(DG) > 10) >= 2
DG <- DG[DG_keep, ,keep.lib.sizes = F]
dim(cpm(DG)) # 10164, 6

# 25108 genes, 18345 genes with expression > 0, 10164 genes with expression > 10 CPM in at least two samples

# TMM NORMALIZATION
DG$samples$norm.factors # initial factors (all ones)
head(cpm(DG)) # non normlized CPM
DG <- calcNormFactors(DG) # compute the scaling factors for each library
DG$samples$norm.factors # scaling factors
head(cpm(DG)) # normalized CPM

# multidimensional scaling plot of samples
plotMDS(DG, cex = 0.6, col = c(rep("blue", 3), rep("red", 3)))

# estimate negative binomial dispersions, it estimates PHI of the Negative Binomial 
DG <- estimateDisp(DG)
head(DG$tagwise.dispersion)
plotBCV(DG)

# perform test for differential expression between the two conditions
diff_expr_test <- exactTest(DG, c("NPC_wt", "mut_kdm2b"))

# select genes with significant diff. expression (FDR <= 0.01)
diff_expr_test_sign <- topTags(diff_expr_test, n = nrow(diff_expr_test), p.value = 0.01)

# check the differential expressed genes (DEGs)
head(diff_expr_test_sign$table)
tail(diff_expr_test_sign$table)

# up-regulated genes (more expressed in infected)
sum(diff_expr_test_sign$table$logFC > 0) # 464
# down-regulated genes (less expressed in infected)
sum(diff_expr_test_sign$table$logFC < 0) # 196

# divide for up and down regulated genea
up_regulated_genes <- row.names(diff_expr_test_sign$table)[diff_expr_test_sign$table$logFC > 0]
down_regulated_genes <- row.names(diff_expr_test_sign$table)[diff_expr_test_sign$table$logFC < 0]

# save excel output file for enrichment analysis
write_xlsx(list(as.data.frame(up_regulated_genes),
                         as.data.frame(down_regulated_genes)), "~/project_track1/up_down_genes.xlsx")

# boxplot up 
boxplot(cpm(DG) [up_regulated_genes,], notch = T, outline = F, col = c(rep("blue", 3), rep("red", 3)),
        ylab = "CPM", xlab ="Samples", main = "CPM distribution up-regulated genes in mutant cells") 
# boxplot down
boxplot(cpm(DG) [down_regulated_genes,], notch = T, outline = F, col = c(rep("blue", 3), rep("red", 3)),
        ylab = "CPM", xlab ="Samples", main = "CPM distribution up-regulated genes in mutant cells")

# scatterplot
vsScatterPlot(x = "NPC_wt", y = "mut_kdm2b", data = DG, type = "edger")

# vulcano plot
# set colors
colors <- ifelse(diff_expr_test$table$PValue <= 0.01, ifelse(diff_expr_test$table$logFC > 0, "red", "blue"),
                 "black")
# plot
vulcano_plot <- ggplot(diff_expr_test$table, aes(x = logFC, y = -log10(PValue))) +
  geom_point(color = colors, size = 0.1) +
  labs(x = "LogFC", y = "-log10 Pvalue", title = "Vulcano Plot") +
  ylim(0, 20) +
  theme_minimal()
print(vulcano_plot)
# ggsave("~/project_track1/plots/vulcano_plot.png", plot = last_plot(), width = 10, height = 8, dpi = 300)

# MA plot
vsMAPlot(x = "NPC_wt", y = "mut_kdm2b", data = DG, type = "edger", padj = 0.01)


