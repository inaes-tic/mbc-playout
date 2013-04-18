MBC_CONFIG="${PWD}/common/config"
NODE_CONFIG_DIR=${MBC_CONFIG}

MAKEFLAGS += -j 4

.PHONY: common caspa mosto

all: update serve

submodules: common caspa mosto

common: common/package.json
caspa: caspa/package.json
mosto: mosto/package.json

%/package.json:
	git submodule update --recursive --init $@
	cd $@; npm install;

node_modules:
	mkdir -p $@

npm:
	npm install

links: mosto/node_modules/mbc-common mosto/node_modules/mbc-common

%/node_modules:
	mkdir $@

%/node_modules/mbc-common: %/node_modules
	ln -sf ./common ./$*/node_modules/mbc_common
	cd $*; npm install;

update: submodules links

%-serve:
	cd $*; make NODE_CONFIG_DIR=${NODE_CONFIG_DIR} serve

serve: mosto-serve caspa-serve
	node server.js

.PHONY: npm submodules serve
