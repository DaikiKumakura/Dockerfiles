# Dockerfiles

**Container definitions for bioinformatics tools: genome assembly and
annotation, read processing, alignment, RNA-seq and metagenomics.**

## Quick start

```bash
docker build -t seqkit seqkit/
docker run --rm -v "$PWD:/data:ro" seqkit seqkit stats -T /data/sample.fa
```

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
