APP_FILES=$(shell find . -type f)

all: nntp

nntp: lit $(APP_FILES)

lit:
	curl -L https://github.com/luvit/lit/raw/0.9.7/web-install.sh | sh

clean:
	rm -rf nntp lit-* luvi lit

lint:
	find . -name "*.lua" | xargs luacheck

.PHONY: clean lint
