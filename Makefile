.PHONY: all clean

export GOOS   = linux
export GOARM  = 7
export GOARCH = arm

export CROSS_COMPILE=arm-linux-gnueabi-
export CC = ${CROSS_COMPILE}gcc
export CGO_ENABLED=1
#export CGO_CFLAGS=-I/usr/arm-none-eabi/include
#export CGO_LDFLAGS=-L/usr/arm-none-eabi/lib

all: KoboRoot.tgz KoboWeather ## Build APP and prepare Kobo update.

help:
	@echo Available targets:
	@perl -ne 'printf("\t%-10s\t%s\n", $$1, $$2)  if /^(\w+):\s*.*\s*##\s*(.*)$$/' <$(MAKEFILE_LIST)

clean: ## Remove all artifacts
	@rm -fv KoboRoot.tgz KoboWeather

KoboWeather: ## Build KoboWeather APP
	go build -work -x -o $@ .

KoboRoot.tgz: $(shell find rootfs -type f) ## Build a Kobo update (to be placed in .kobo folder of your device)
	tar czf $@ -C rootfs .
