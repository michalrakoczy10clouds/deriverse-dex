#!/bin/bash

cd dex

cargo build-bpf

cargo test
