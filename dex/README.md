# deriverse-dex

## Prerequirements

### Install Rust

``` bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
[Link to official site.](https://www.rust-lang.org/tools/install)

### Install Solana

``` bash
sh -c "$(curl -sSfL https://release.solana.com/stable/install)"
```

Now you should have installed Solaan CLI on you machine, check it via:
``` bash
solana --version
```
If there are any problems, visit [official Solana installation guide](https://solana.com/developers/guides/getstarted/setup-local-development).

``` bash
# generates new key and store it to ~/.config/solana/id.json
solana-keygen new

# now tell SOlana to use you new wallet to be default one
solana config set -k ~/.config/solana/id.json

# finally airdrop some SOL
solana airdrop 2
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