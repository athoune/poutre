#!/usr/bin/env Rscript

tbl1 <- read.csv('poutre.csv', sep=";")
plot(strptime(tbl1$timestamp, "%Y-%m-%d %H:%M:%S"), tbl1$time, xlab="Time", ylab="Latency", main="Benchmark")
