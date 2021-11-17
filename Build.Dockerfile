FROM debian:bullseye-20211011

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y libseqan3-dev clang-11 vim bazel-bootstrap

ADD . /Bazel/Source/raymify
RUN cd /Bazel/Source/raymify && bazel build //main:raymify-demo

