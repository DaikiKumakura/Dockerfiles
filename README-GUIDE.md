# Dockerfiles guide

**Container definitions for bioinformatics tools: genome assembly and
annotation, read processing, alignment, RNA-seq and metagenomics.**

Each folder holds one `dockerfile` for one tool or environment. Images built
from them are published on Docker Hub as `kumalpha/<name>`.

> [!IMPORTANT]
> Only `seqkit` and `MAFFT` are maintained and checked. The other definitions
> are historical: most build on Debian 9, which is no longer supported, and
> they have not been rebuilt or validated recently. Check outputs and
> compatibility before using them in an analysis.

## Quick start

```bash
docker build -t seqkit seqkit/
docker run --rm -v "$PWD:/data:ro" seqkit seqkit stats -T /data/sample.fa
```

## Documentation

[Maintained environments](#maintained-environments) · [Build and publish](#build-and-publish) · [Historical definitions](#historical-definitions)

## Maintained environments

The quick start below uses the maintained seqkit image. Run it from the
repository root with Docker and a `sample.fa` file in the current directory.

| Folder | Base | Tool version | Check |
|---|---|---|---|
| [`seqkit`](seqkit/) | Ubuntu 24.04 | Ubuntu package 2.3.1+ds-2ubuntu0.3 | `seqkit stats` on a small FASTA |
| [`MAFFT`](MAFFT/) | Ubuntu 24.04 | Ubuntu package 7.505-1 | two-sequence alignment |

GitHub Actions builds both on every push and runs the check; it does not
publish images. The Ubuntu base tag is not pinned to a digest, so builds are
not claimed to be bit-identical.

## Historical definitions

Not maintained or validated; listed so they can be found.

| Area | Folders |
|---|---|
| Base image | `debian9-slim-bioconda3` (Debian 9 with Bioconda; the base of most folders below) |
| Assembly | `SPAdes`, `MEGAHIT`, `MetaPlatanus`, `Flye`, `canu`, `unicycler` |
| Annotation | `Prokka`, `Bakta`, `DFAST`, `Prodigal`, `ARAGORN`, `tRNAscan-SE`, `pharokka`, `gapseq` |
| Plasmids and viruses | `MOB-suite`, `RFPlasmid`, `VIBRANT`, `VirSorter2`, `genomad` |
| Reads: QC and trimming | `fastp`, `cutadapt`, `trim-galore`, `trimmomatic`, `prinseq`, `fastx_toolkit`, `bbtools`, `kneaddata` |
| Alignment and variants | `bowtie2`, `bwa`, `bwa-mem2`, `minimap2`, `hisat2`, `star`, `samtools`, `bcftools`, `Pandora`, `deeptools`, `igv` |
| RNA-seq | `salmon`, `kallisto`, `RNA-seq-pipeline-IZUMO` |
| Metagenomics | `humann3`, `metawrap`, `metawrap-1.1`, `kaiju`, `qiime2-core` |
| Sequences and data | `seqtk`, `any2fasta`, `sra-tools`, `grabseqs`, `ncbi_genome_download` |

## Build and publish

```bash
docker build -t NAME FOLDER/
docker tag NAME kumalpha/NAME:latest
docker push kumalpha/NAME:latest
```

## Related

- [ShotgunMetagenomics](https://github.com/DaikiKumakura/ShotgunMetagenomics)
  is a Japanese tutorial that uses images built from `kneaddata`, `bbtools`
  and `humann3`.

## Citation

Kumakura, D. *Dockerfiles* [Software]. [GitHub repository](https://github.com/DaikiKumakura/Dockerfiles).

## License

This project is licensed under MIT. See [LICENSE](LICENSE) for the license terms.
