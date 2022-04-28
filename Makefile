MKDOCS = mkdocs

.DEFAULT_GOAL = help
.PHONY        = help

help:
	@grep -E '(^[a-zA-Z0-9_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

watch: ## Preview documentation locally
	$(MKDOCS) serve

build: ## Build Site
	$(MKDOCS) build

upgrade-mkdocs-material:
	pip install --upgrade mkdocs-material
