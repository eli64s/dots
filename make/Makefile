.DEFAULT_GOAL := help
SHELL := /bin/bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

DOCS_DIR := docs
PYPROJECT:= pyproject.toml
TARGET := markitecture
TARGET_TEST := tests
VERSION := $(shell python -c 'from markitecture.version import __version__; print(__version__.replace("-", "."))')


# -------------
# Clean Project
# -------------

clean: clean-build clean-pyc clean-test ## Remove all build, test, coverage, and Python artifacts

clean-build: ## Remove build artifacts
	rm -fr build/
	rm -fr dist/
	rm -fr .eggs/
	find . -name '*.egg-info' -exec rm -fr {} +
	find . -name '*.egg' -exec rm -f {} +

clean-pyc: ## Remove Python file artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-test: ## Remove test and coverage artifacts
	rm -fr .tox/
	rm -f .coverage
	rm -fr htmlcov/
	rm -fr .pytest_cache


# -------------
# Development
# -------------

.PHONY: build
build: ## Build the distribution package using uv
	uv build
	uv pip install dist/markitecture-$(VERSION)-py3-none-any.whl

.PHONY: install
install: ## Install all dependencies from pyproject.toml
	uv sync --dev --group lint --group test --all-extras

.PHONY: lock
lock: ## Lock dependencies declared in pyproject.toml
	uv pip compile $(PYPROJECT) --all-extras

.PHONY: requirements
requirements: ## Generate requirements files from pyproject.toml
	uv pip compile $(PYPROJECT) -o requirements.txtiu
	uv pip compile $(PYPROJECT) --all-extras -o requirements-dev.txt

.PHONY: sync
sync: ## Sync environment with pyproject.toml
	uv sync --all-groups --dev

.PHONY: update
update: ## Update all dependencies from pyproject.toml
	uv lock --upgrade

.PHONY: venv
venv: ## Create a virtual environment
	uv venv


# -------------
# Documentation
# -------------

.PHONY: docs
docs: ## Serve mintlify documentation locally
	cd $(DOCS_DIR) && npx mintlify dev --verbose

.PHONY: mkdocs
mkdocs: ## Serve MkDocs documentation locally
	cd $(DOCS_DIR) && mkdocs serve

.PHONY: mkdocs-venv
mkdocs-venv: ## Build MkDocs documentati
	uvx --with mkdocs-material mkdocs serve


# -------------
# Lint & Format
# -------------

.PHONY: format-toml
format-toml: ## Format TOML files using pyproject-fmt
	uvx --isolated pyproject-fmt $(TOML_FILE) --indent 4

.PHONY: format
format: ## Format Python files using Ruff
	@echo -e "\n► Running the Ruff formatter..."
	uvx --isolated ruff format $(TARGET)

.PHONY: lint
lint: ## Lint Python files using Ruff
	@echo -e "\n ►Running the Ruff linter..."
	uvx --isolated ruff check $(TARGET) --fix

.PHONY: format-and-lint
format-and-lint: format lint ## Format and lint Python files

.PHONY: typecheck-mypy
typecheck-mypy: ## Type-check Python files using MyPy
	uv run mypy $(TARGET)

.PHONY: typecheck-pyright
typecheck-pyright: ## Type-check Python files using Pyright
	uv run pyright $(TARGET)


# -------------
# Tests
# -------------

.PHONY: test
test: ## Run test suite using Pytest
	@export PYTHONDONTWRITEBYTECODE=1 PYTHONPYCACHEPREFIX=/dev/shm && \
	uv run pytest $(TARGET_TEST) --config-file=$(PYPROJECT)


# -------------
# Utils
# -------------

bump-version:
	python scripts/bump_version.py src/markitecture/version.py patch


.PHONY: help
help: ## Display this help
	@echo ""
	@echo "Usage: make [target]"
	@echo ""
	@awk 'BEGIN {FS = ":.*?## "; printf "\033[1m%-20s %-50s\033[0m\n", "Target", "Description"; \
	              printf "%-20s %-50s\n", "------", "-----------";} \
	      /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %-50s\n", $$1, $$2}' $(MAKEFILE_LIST)
	@echo ""
