RED=\033[0;31m
NC=\033[0m

PROGRAM_ID=74AmnpEk4t7akWSfuQ7hJMwAKXsWL3TcHnU2oZxQryXn
ADMIN_KEYPAIR_PATH=./admin-key.json

build:
	cargo build-sbf

unit-test:
	cargo test

# todo crank need to be fixed, will be done later
integration-test:
	$(eval dexId = $(shell solana program deploy -u l --output json-compact ./target/sbf-solana-solana/release/serum_dex.so | jq .programId -r))
	cd crank && cargo run -- localnet whole-shebang ~/.config/solana/id.json $(dexId)
	cd ..

# Builds dex program and deploy it to local node
# requires solana-validator-node running in separate terminal
# Returns deployed program ID
local: build
	@echo
	@echo "${RED}Requires solana-validator-node running!!!!${NC}"
	@echo
	solana program deploy --url localhost -v --output json-compact ./target/sbf-solana-solana/release/serum_dex.so

devnet: build
	solana program deploy --url devnet -v --output json-compact ./target/sbf-solana-solana/release/serum_dex.so

devnet-update:
	solana program deploy --url devnet -v --output json-compact --program-id=${PROGRAM_ID} -k ${ADMIN_KEYPAIR_PATH} ./target/sbf-solana-solana/release/serum_dex.so
