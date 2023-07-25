# Base image
FROM kumalpha/debian9-slim-bioconda3:latest

# Installing packages
RUN conda update conda \
  && conda install -c bioconda -y kaiju \
  && conda clean --all --yes



