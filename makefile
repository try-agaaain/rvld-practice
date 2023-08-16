TESTS := $(wildcard ./test/*.sh)
build:
	go build rvld.go

test: build
	$(MAKE) $(TESTS)

$(TESTS):
	@echo "\e[32mBegin test...\e[0m"
	@bash ./$@
	@printf "\e[32mPass\n\e[0m"

clean:
	go clean
	rm -rf out/

preinstall:
	sudo apt update
	sudo apt install -y gcc-10-riscv64-linux-gnu qemu-user
	sudo ln -sf /usr/bin/riscv64-linux-gnu-gcc-10 /usr/bin/riscv64-linux-gnu-gcc

.PHONY: build clean test $(TESTS)