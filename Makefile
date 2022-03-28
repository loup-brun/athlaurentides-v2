DIST_DIR=_site

.PHONY: help

help:
	@echo "Commandes disponibles :"
	@echo ""
	@echo "  build		construire le site dans \"$(DIST_DIR)\""
	@echo "  serve		servir le site"
	@echo "  deploy	déployer"
	@echo "  all		faire tout ça"

build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve

deploy:
	bash deploy.sh

clean:
	rm -rf $(DIST_DIR)

all: clean build deploy
	echo "Terminé"
