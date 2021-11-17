FROM debian:bullseye-20211011

# Refresh package index.
RUN apt-get update -y && apt-get upgrade -y

# Download a sample data file.
RUN apt-get install -y curl
ARG ecoli_source="https://www.ebi.ac.uk/ena/browser/api/fasta/U00096.3?download=true"
RUN mkdir -p /Datasets/Ecoli-K-12-MG1655
RUN cd /Datasets/Ecoli-K-12-MG1655 && curl $ecoli_source --output sequences.fasta

# Install C++ compiler and libraries.
RUN apt-get install -y libseqan3-dev clang-11 vim bazel-bootstrap

# Build C++ code.
ADD . /Bazel/Source/raymify
RUN cd /Bazel/Source/raymify && bazel build //main:raymify-demo



