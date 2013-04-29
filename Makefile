MBC_CONFIG="${PWD}/common/config"
NODE_CONFIG_DIR=${MBC_CONFIG}

MAKEFLAGS += -j 4

SERVERS = caspa mosto
COMPONENTS= ${SERVERS} common

MBC_VARS = \
	NODE_CONFIG_DIR=${NODE_CONFIG_DIR} \
	MBC_SCRAPE=${MBC_SCRAPE} \
	${NULL}

MBC_DEFAULT_BRANCH = origin/master

.PHONY: common caspa mosto update serve links

all: update serve

update: submodules links

%-update:
	cd $* ; git fetch --prune ; git checkout ${MBC_DEFAULT_BRANCH}

submodules: common caspa mosto

common: common-update common/package.json common/node_modules

%/node_modules:
	cd $*; npm install;

caspa: caspa-update caspa/package.json
mosto: mosto-update mosto/package.json

%/package.json:
	git submodule update --recursive --init $@
	cd $@; npm install;

node_modules:
	mkdir -p $@

npm:
	npm install

links: mosto-common caspa-common

mosto-common: common mosto/node_modules/mbc-common
caspa-common: common caspa/node_modules/mbc-common

%/node_modules/mbc-common: %/node_modules
	ln -sf ${PWD}/common ${PWD}/$*/node_modules/mbc-common
	cd $*; npm install;

%-serve:
	@cd $*; make ${MBC_VARS} serve

serve: mosto-serve caspa-serve
	node server.js

.PHONY: npm submodules serve
