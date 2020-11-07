.PHONY: all clean

all: KoboRoot.tgz ## Build docker image and Kobo update.

clean: ## Remove all artifacts
	@rm -fv KoboRoot.tgz weather.txt

KoboRoot.tgz: $(shell find rootfs -type f) ## Build a Kobo update (to be placed in .kobo folder of your device)
	tar czf $@ -C rootfs .

