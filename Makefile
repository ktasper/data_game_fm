.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init-dev: ## Install dev dependencies
	@echo "Setting up poetry packages"
	poetry install --no-root
	@echo "Setting up pre-commit"
	pre-commit install

dev-serve: ## Run the flask dev server
	@echo "Running dev server"
	poetry run python3 -m flask --app src.app run

debug-serve: ## Run the flask dev server with debugging mode
	@echo "Running dev server"
	poetry run python3 -m flask --app src.app run --debug
