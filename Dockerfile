FROM debian:bullseye-20211011

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y libseqan3-dev clang-11 vim bazel-bootstrap curl

ADD . /Bazel/Source/raymify
RUN cd /Bazel/Source/raymify && bazel build //main:raymify-demo

# Download a sample data file.
ARG ecoli_source="https://www.ebi.ac.uk/ena/browser/api/fasta/U00096.3?download=true"
RUN mkdir -p /Datasets/Ecoli-K-12-MG1655
RUN cd /Datasets/Ecoli-K-12-MG1655 && curl $ecoli_source --output sequences.fasta


