all: release

export CARGO_NET_GIT_FETCH_WITH_CLI = true

build:
	cargo build

release:
	cargo build --release --features "compression"

lint:
	cargo check --features "compression"
	cargo check --tests --features "compression,testing"

test:
	cargo test --features "testing"
	# cargo test --features "compression,testing" -- --test-threads=1

bench:
	cargo bench

fmt:
	cargo +nightly fmt

update:
	cargo update

clean:
	cargo clean

cleanall:
	git stash
	git clean -fdx

doc:
	cargo doc --open
