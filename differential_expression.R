# Differential Expression Analysis
# Dataset: GSE146206
# Comparison: Mannitol vs Control

library(DESeq2)
library(ggplot2)

# Load filtered count matrix and sample metadata
# Ensure samples and biological conditions are correctly matched.

# Create DESeq2 dataset
dds <- DESeqDataSetFromMatrix(
  countData = count_mat,
  colData = metadata,
  design = ~ condition
)

# Run differential expression analysis
dds <- DESeq(dds)
res <- results(dds, contrast = c('condition', 'Mannitol', 'Control'))

# Export results
res_df <- as.data.frame(res)
res_df$gene_id <- rownames(res_df)
write.csv(res_df, 'results/dge/all_DEG_results.csv', row.names = FALSE)
