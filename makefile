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

.PHONY: build clean test $(TESTS)