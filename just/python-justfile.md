# Justfile for Python Project with `uv` and `just`

```bash
#!/usr/bin/env -S just --justfile

# ==============================================================================
# justfile for a Python Project
#
# Managed with: uv
# Linting/Formatting: Ruff
# Testing: Pytest
# Documentation: MkDocs
# ==============================================================================

# --- Configuration ---

# Name of the primary source directory.
# Used for coverage and potentially other commands.
SRC_DIR := "src/your_package_name" # FIXME: Adjust to your package name/src layout

# Name of the tests directory.
TESTS_DIR := "tests"

# Name of the documentation source directory.
DOCS_DIR := "docs"

# Virtual environment directory used by uv.
VENV_DIR := ".venv"

# Default Python version to hint for uv if needed (uv usually infers this).
# PYTHON_VERSION := "3.11"

# Name of the optional dependency group in pyproject.toml for development tools.
# Ensure this group in `[project.optional-dependencies]` or `[tool.uv.sources]`
# contains ruff, pytest, mkdocs, mkdocs-material (or your theme), etc.
DEV_GROUP := "dev"

# --- Aliases ---
alias ci := check-all
alias cov := coverage
alias docs := docs-serve
alias fmt := format
alias lint := ruff-check
alias test := pytest-run
alias setup := init
alias help := list-recipes

# --- Default Recipe ---
# List available recipes by default or when `just help` is run.
default: list-recipes

list-recipes:
    @just --list

# --- Environment & Dependencies ---

# Initialize the project: create venv (if needed) and install all dependencies.
init:
    @echo "⚙️  Initializing project and installing all dependencies (main + {{DEV_GROUP}})..."
    uv sync --extra {{DEV_GROUP}}
    @echo "✅ Project initialized. Virtual environment is in '{{VENV_DIR}}'."
    @echo "   You can activate it with 'source {{VENV_DIR}}/bin/activate',"
    @echo "   or just use 'just <command>' which uses 'uv run'."

# Synchronize the virtual environment with uv.lock.
sync:
    @echo "🔄 Syncing dependencies from uv.lock (main + {{DEV_GROUP}})..."
    uv sync --extra {{DEV_GROUP}}

# Update the uv.lock file based on pyproject.toml.
lock:
    @echo "🔒 Locking dependencies (updating uv.lock)..."
    uv lock

# Add a new runtime dependency to pyproject.toml and install it.
add PACKAGE:
    @echo "➕ Adding runtime dependency: {{PACKAGE}}..."
    uv add {{PACKAGE}}

# Add a new development dependency to pyproject.toml (in the DEV_GROUP) and install it.
add-dev PACKAGE:
    @echo "➕ Adding development dependency to group '{{DEV_GROUP}}': {{PACKAGE}}..."
    uv add {{PACKAGE}} --group {{DEV_GROUP}}

# Upgrade all dependencies to their latest allowed versions, then sync.
upgrade:
    @echo "⬆️  Attempting to upgrade all dependencies to latest versions..."
    uv lock --upgrade  # Upgrades versions in uv.lock according to pyproject.toml constraints
    uv sync --extra {{DEV_GROUP}} # Installs the newly locked versions
    @echo "✅ Dependencies upgraded and synced."

# --- Code Quality (Ruff) ---

# Check code for linting errors using Ruff.
ruff-check:
    @echo "🔍 Linting with Ruff..."
    uv run ruff check .

# Format code using Ruff.
format:
    @echo "🎨 Formatting code with Ruff..."
    uv run ruff format .

# Check if code is formatted correctly (dry-run).
ruff-check-format:
    @echo "🔍 Checking code formatting with Ruff (dry-run)..."
    uv run ruff format --check .

# Run all linting and formatting checks.
check-all: ruff-check ruff-check-format pytest-run
    @echo "✅ All checks (Ruff lint, Ruff format check, Pytest) passed."

# --- Testing (Pytest) ---

# Run tests using pytest. Pass additional arguments like: just test '-k "some_test_name"'
pytest-run PYTEST_ARGS='':
    @echo "🧪 Running tests with pytest..."
    uv run pytest {{TESTS_DIR}} {{PYTEST_ARGS}}

# Run tests with coverage report.
coverage PYTEST_ARGS='':
    @echo "🧪 Running tests with coverage..."
    uv run pytest --cov={{SRC_DIR}} --cov-report=term-missing --cov-report=html {{TESTS_DIR}} {{PYTEST_ARGS}}
    @echo "📊 Coverage report generated. Open 'htmlcov/index.html' to view."

# --- Documentation (MkDocs) ---

# Serve the documentation locally for development.
# Assumes mkdocs and theme are in the DEV_GROUP.
docs-serve:
    @echo "📚 Serving documentation locally with MkDocs..."
    @echo "   Access at http://127.0.0.1:8000"
    uv run mkdocs serve

# Build the static documentation site.
docs-build:
    @echo "🏗️  Building static documentation site with MkDocs..."
    uv run mkdocs build
    @echo "✅ Documentation built in 'site/' directory."

# Deploy documentation (placeholder - customize for your hosting).
docs-deploy: docs-build
    @echo "🚀 Deploying documentation (placeholder)..."
    # Example for GitHub Pages (requires gh-pages package):
    # uv run gh-pages -d site -m "Deploy documentation [skip ci]"
    @echo "   You need to implement the actual deployment command here."

# --- Building & Publishing ---

# Build the package (source distribution and wheel).
build:
    @echo "📦 Building package (sdist and wheel)..."
    uv build --sdist --wheel
    @echo "✅ Package artifacts built in 'dist/' directory."

# Publish the package to PyPI (or configured repository).
# Requires authentication to be set up for uv.
publish: build
    @echo "🚢 Publishing package..."
    uv publish
    @echo "✅ Package published."

# Publish to TestPyPI
publish-test: build
    @echo "🚢 Publishing package to TestPyPI..."
    uv publish --repository testpypi
    @echo "✅ Package published to TestPyPI."

# --- Cleaning ---

# Remove Python bytecode files and __pycache__ directories.
clean-pyc:
    @echo "🧹 Cleaning Python bytecode files..."
    find . | grep -E "(__pycache__|\.py[cod]$)" | xargs rm -rf

# Remove build artifacts (dist, build, .egg-info).
clean-build:
    @echo "🧹 Cleaning build artifacts..."
    rm -rf build/
    rm -rf dist/
    rm -rf *.egg-info/
    rm -rf {{SRC_DIR}}/*.egg-info/ # If src-layout with egg-info inside

# Remove test artifacts (.pytest_cache, .coverage, htmlcov).
clean-test:
    @echo "🧹 Cleaning test artifacts..."
    rm -rf .pytest_cache/
    rm -rf .coverage*
    rm -rf htmlcov/

# Remove MkDocs build artifacts (site directory).
clean-docs:
    @echo "🧹 Cleaning documentation build artifacts..."
    rm -rf site/

# Remove the uv-managed virtual environment.
clean-venv:
    @echo "🧹 Removing virtual environment ('{{VENV_DIR}}')..."
    rm -rf {{VENV_DIR}}

# Clean all generated artifacts and the virtual environment.
clean-all: clean-pyc clean-build clean-test clean-docs clean-venv
    @echo "🧼 Project fully cleaned."

```

**How to Use This `justfile`:**

1.  **Save:** Save this content as `justfile` in the root of your Python project.
2.  **Customize `FIXME`:**
    *   Update `SRC_DIR := "src/your_package_name"` to match your project's source directory layout (e.g., `"your_package_name"` if not using a `src` layout, or the correct path if it is). This is important for test coverage.
3.  **Configure `pyproject.toml`:**
    *   Ensure you have a `[project.optional-dependencies]` section (or `[tool.uv.sources]` if you prefer that for dev tools) for your development tools. For example:
        ```toml
        [project.optional-dependencies]
        dev = [
            "ruff",
            "pytest",
            "pytest-cov",
            "mkdocs",
            "mkdocs-material", # Or your preferred MkDocs theme & plugins
            # Add other dev tools like pre-commit, ipython, etc.
        ]
        ```
    *   The `DEV_GROUP` variable in the `justfile` (`dev` by default) should match the key used here.
4.  **Install `just`:** If you haven't already, [install `just`](https://github.com/casey/just#installation).
5.  **Run Recipes:**
    *   `just init` (or `just setup`): To set up the project for the first time or after cloning.
    *   `just test`: To run tests.
    *   `just format`: To format code.
    *   `just docs`: To serve documentation.
    *   `just`: To see a list of all available recipes.
    *   `just help`: Same as `just`.

This `justfile` provides a robust set of commands for a typical modern Python workflow with `uv`. Remember to adapt paths and group names as needed for your specific project structure.
