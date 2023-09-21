# Predicting APA Isoforms with MAAPER: A Bioinformatic tool testing

## **Overview**

In the ever-evolving realm of bioinformatics, where the study of genes and their expression is rapidly advancing, I recently embarked on an exciting journey to explore the fascinating world of **alternative polyadenylation (APA)** isoforms. APA, a process where genes express multiple isoforms, plays a pivotal role in gene regulation, impacting various cellular functions.

My journey led me to the discovery of MAAPER, an innovative and powerful tool for the analysis of APA using 3′ end-linked reads. As a bioinformatician, I was drawn to this method, which promised to leverage nearSite reads---those close to the polyadenylation site (PAS)---to gain insights into APA isoform abundance. MAAPER intrigued me not only because of its potential but also because it fills a critical gap in the analysis of this type of RNA sequencing data.

**Exploring MAAPER: A Bioinformatic Marvel:**

Before diving into the intricacies of MAAPER, it's essential to understand the significance of APA. Did you know that a majority of eukaryotic genes have multiple cleavage and polyadenylation sites (PASs)? This leads to the expression of APA isoforms, where genes produce alternative transcripts with variable 3' untranslated regions (3'UTRs). APA is not just a quirk of genetics; it's a fundamental mechanism of gene regulation. It enables genes to diversify their expression patterns across different cell types and under various physiological and pathological conditions.

However, accurately profiling APA isoforms has been a daunting task. Traditional RNA sequencing methods lack the precision required for identifying PASs, especially those located within introns. This is where MAAPER comes into play.

It's essential to recognize the source of this invaluable tool. MAAPER is based on a groundbreaking method detailed in the **journal paper** titled "**MAAPER: model-based analysis of alternative polyadenylation using 3′ end-linked reads.**" This publication, authored by experts in the field, laid the foundation for MAAPER's development and its significance in APA analysis.

**MAAPER: Illuminating the World of APA:**

MAAPER takes advantage of RNA sequencing methods that generate reads biased toward the 3' end of transcripts, particularly near PASs. These reads, aptly named nearSite reads, contain vital information about the PAS positions. MAAPER's innovative approach lies in its ability to accurately assign these nearSite reads to specific PASs through advanced statistical modeling. It doesn't stop there; MAAPER also provides a wealth of statistical data for comprehensive APA analysis.

One of the remarkable aspects of MAAPER is its versatility. It performs with excellence in both **bulk** and **single-cell** data analysis, making it an invaluable tool for a wide range of research applications. Whether you're working with paired or unpaired experimental designs, MAAPER has you covered.

**Testing and Modification for Real-World Application:**

As I delved into MAAPER and explored its capabilities, I was impressed by its performance and the depth of insights it provided into APA isoforms. To ensure its practicality in real-world scenarios, I rigorously tested the code. Initially designed for **High-Performance Computing (HPC)** environments with **SLURM**, I took the initiative to modify the code to make it accessible and functional within the user-friendly confines of **RStudio**. This modification not only broadened the accessibility of MAAPER but also made it a versatile tool that could be employed by researchers across different computational platforms.

**The Path Forward:**

As I navigated through the world of APA isoforms with MAAPER, I was excited to contribute to its real-world application and extend its reach to a broader community of researchers. This bioinformatic journey has reaffirmed my belief in the power of cutting-edge tools like MAAPER to unlock the secrets hidden within RNA sequencing data.

If you're intrigued and want to join me on this bioinformatic adventure, you can access the MAAPER R package on GitHub <https://github.com/Vivianstats/MAAPER>. It's a fantastic resource for anyone interested in APA analysis using 3′ end-linked reads. Happy exploring in the world of APA isoforms with MAAPER!

## **SLURM bash & R script**

`maaper` requires three input files:

-   The GTF file of the reference genome;

-   The BAM files of the 3\' sequencing data (nearSite reads). The BAM file should be sorted and the index BAI file should be present in the same directory as the BAM file;

-   The PAS annotation file whose version matches the reference genome. We have prepared [PolyA_DB](https://exon.apps.wistar.org/PolyA_DB/v3/) annotation files for MAAPER, and they can be downloaded from [this page](https://github.com/Vivianstats/data-pkg/tree/main/MAAPER/PolyA_DB).

    The final output of `mapper` are two text files named \"gene.txt\" and \"pas.txt\", which contain the predicted PASs and APA results.

## References:

Shaw, P., Chaotheing, S., Kaewprommal, P., Piriyapongsa, J., Wongsombat, C., Suwannakitti, N., Koonyosying, P., Uthaipibull, C., Yuthavong, Y., & Kamchonwongpaisan, S. (2015). Plasmodium parasites mount an arrest response to dihydroartemisinin, as revealed by whole transcriptome shotgun sequencing (RNA-seq) and microarray study. *BMC Genomics*, *16*(1). <https://doi.org/10.1186/s12864-015-2040-0>

## Blog:

Li, W. V., Zheng, D., Wang, R., & Tian, B. (2021). MAAPER: model-based analysis of alternative polyadenylation using 3' end-linked reads. *Genome biology*, *22*(1), 222. <https://doi.org/10.1186/s13059-021-02429-5>

## Access data:

<https://github.com/Vivianstats/MAAPER>

## **Input & output data available in the data folder**

<https://github.com/chingyaousf/Predicting-APA-Isoforms-with-MAAPER-A-Bioinformatic-tool/tree/main/data>
