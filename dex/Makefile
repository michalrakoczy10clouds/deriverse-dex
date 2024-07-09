RED=\033[0;31m
NC=\033[0m # No Color

build:
	cargo build-sbf

unit-test:
	cargo test

# todo crank need to be fixed, will be done later
integration-test:
	$(eval dexId = $(shell solana program deploy -u l --output json-compact ./target/sbf-solana-solana/release/serum_dex.so | jq .programId -r))
	cd crank && cargo run -- localnet whole-shebang ~/.config/solana/id.json $(dexId)

local: build
	@echo
	@echo "${RED}Requires solana-validator-node running!!!!${NC}"
	@echo
	solana program deploy -u l --output json-compact ./target/sbf-solana-solana/release/serum_dex.so | jq .programId -r

devnet: build
