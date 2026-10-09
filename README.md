# RNA-seq Analysis: Arabidopsis thaliana Stress Response

## Objective
Identify differentially expressed genes and biological processes associated with Mannitol treatment compared with Control.

## Dataset
- GEO accession: GSE146206
- Organism: Arabidopsis thaliana
- Data source: NCBI Gene Expression Omnibus (GEO)

## Workflow
1. Download and inspect the expression dataset.
2. Extract and filter gene-count data.
3. Perform exploratory quality control and PCA.
4. Identify differentially expressed genes using DESeq2.
5. Visualize results using volcano and MA plots.
6. Perform Gene Ontology enrichment analysis.

## Thresholds
- Adjusted p-value < 0.05
- Absolute log2 fold change >= 1

## Main Results
See `results/dge/` for differential expression tables and `figures/` for visualizations.

## Important limitation
Sample labels and count provenance must be verified against the original study before interpreting biological results. Estimated counts were rounded for the preliminary DESeq2 analysis.

## Tools
R, DESeq2, ggplot2, clusterProfiler, org.At.tair.db

## Reproducibility
The analysis scripts and package versions should be documented before drawing biological conclusions.
