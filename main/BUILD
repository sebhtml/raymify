# Bazel config based on this example:
#    https://github.com/bazelbuild/examples/tree/main/cpp-tutorial/stage2/main

load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

#cc_library(
    #name = "hello-greet",
    #srcs = ["hello-greet.cc"],
    #hdrs = ["hello-greet.h"],
#)

cc_binary(
    name = "raymify-demo",
    srcs = ["raymify-demo/raymify-demo-main.cpp"],
    deps = [
        #":hello-greet",
    ],
)

