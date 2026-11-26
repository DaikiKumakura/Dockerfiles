# Dockerfiles

**Container definitions for bioinformatics tools: genome assembly and
annotation, read processing, alignment, RNA-seq and metagenomics.**

## Quick start

```bash
# 1. a two-sequence test file
printf ">seq1\nACGTACGT\n>seq2\nACGTAC\n" > sample.fa

# 2. build the image and run the tool on that file
docker build -t seqkit seqkit/
docker run --rm -v "$PWD:/data:ro" seqkit seqkit stats -T /data/sample.fa
```

`seqkit stats -T` prints a tab-separated table with one line for `sample.fa`: its format (FASTA), type (DNA),
number of sequences and total length. The same pattern works for any image here: build it from its folder, mount
your working folder with `-v`, and run the tool as the command.

## Documentation

[Usage guide](https://github.com/DaikiKumakura/Dockerfiles/blob/main/README-GUIDE.md)

## Validation and limitations

- **Validation:** GitHub Actions builds the maintained seqkit and MAFFT definitions and runs a small fixture for each.
- **Results:** The fixtures exercise FASTA statistics and a two-sequence alignment.
- **Limitations:** Historical definitions have not been rebuilt or checked recently; the base image tag is unpinned.
- **Reproduction:** [README-GUIDE.md](https://github.com/DaikiKumakura/Dockerfiles/blob/main/README-GUIDE.md).

## Citation

Kumakura, D. *Dockerfiles* [Software]. [GitHub repository](https://github.com/DaikiKumakura/Dockerfiles).

## License

This project is licensed under MIT. See [LICENSE](LICENSE) for the license terms.
