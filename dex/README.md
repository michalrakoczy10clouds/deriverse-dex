# deriverse-dex

## Prerequirements

Install Rust and Solana.

``` bash
# generates new key and store it to ~/.config/solana/id.json
solana-keygen new
```

## Local

Run:

Use makefile to build and deploy 

``` bash
solana-test-validator

# in new command line
cd dex
make local
```

Address of deployed dex should appear.