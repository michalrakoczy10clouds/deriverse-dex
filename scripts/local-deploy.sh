#!/bin/bash

cd dex

cargo build-bpf

solana program deploy -u l --output json-compact ./dex/target/sbf-solana-solana/release/serum_dex.so | jq .programId -r