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

# Builds dex program and deploy it to devnet
# Requires private key in ./admin-key.json file
# It creates always new instance of dex program with new program id. To update existing program see devnet-upgrade
devnet: build
	touch admin-key.json
	solana program deploy --url devnet -v --output json-compact -k ${ADMIN_KEYPAIR_PATH} ./target/sbf-solana-solana/release/serum_dex.so

# Builds dex program and deploy it to devnet
# Requires private key in ./admin-key.json file
# It updates existing program under PROGRAM_ID address. Rquires private key linked to deployed program
devnet-update:
	touch admin-key.json
	solana program deploy --url devnet -v --output json-compact --program-id=${PROGRAM_ID} -k ${ADMIN_KEYPAIR_PATH} ./target/sbf-solana-solana/release/serum_dex.so
