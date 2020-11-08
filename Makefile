.PHONY: all clean

all: KoboRoot.tgz KoboWeather ## Build APP and prepare Kobo update.
	@echo -e Next steps:\\n\
		\* Connect your Kobo device via USB with your computer.\\n\
		\* Copy KoboWeather into root folder of your Kobo storage\\n\
		\* Copy KoboRoot.tgz into .kobo folder of your Kobo storage

help:
	@echo Available targets:
	@perl -ne 'printf("\t%-10s\t%s\n", $$1, $$2)  if /^(\w+):\s*.*\s*##\s*(.*)$$/' <$(MAKEFILE_LIST)

clean: ## Remove all artifacts
	@rm -fv KoboRoot.tgz KoboWeather

KoboWeather: ## Build KoboWeather APP
	GOARM=7 GOARCH=arm go build -o $@ .

KoboRoot.tgz: $(shell find rootfs -type f) ## Build a Kobo update (to be placed in .kobo folder of your device)
	tar czf $@ -C rootfs .

