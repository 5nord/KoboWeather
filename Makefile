.PHONY: all clean

all: KoboRoot.tgz ## Build docker image and Kobo update.

clean: ## Remove all artifacts
	@rm -fv KoboRoot.tgz
	@rm -fv weather.txt
	@rm -fv temperature.txt
	@rm -fv precipitation.txt
	@rm -fv wind-speed.txt
	@rm -fv description.txt
	@rm -fv plot.png

KoboRoot.tgz: $(shell find rootfs -type f) ## Build a Kobo update (to be placed in .kobo folder of your device)
	tar czf $@ -C rootfs .

