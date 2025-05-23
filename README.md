<div align="left"><a id="top"></a>

```console
██████   ██████  ████████ ███████
██   ██ ██    ██    ██    ██
██   ██ ██    ██    ██    ███████
██   ██ ██    ██    ██         ██
██████   ██████     ██    ███████

◎ Config files and utility scripts
```

<img src="https://img.shields.io/badge/Visual%20Studio%20Code-3B84F6.svg?style=%7B0%7D&logo=Visual-Studio-Code&logoColor=white" alt="Visual%20Studio%20Code">

<img src="https://img.shields.io/badge/Python-4361EE.svg?style=flat-square&logo=Python&logoColor=white" alt="Python">

<img src="https://img.shields.io/badge/Pytest-0A9EDC.svg?style=flat-square&logo=Pytest&logoColor=white" alt="Pytest">

<img src="https://img.shields.io/badge/GNU%20Bash-1AC8A2.svg?style=flat-square&logo=GNU-Bash&logoColor=white" alt="GNU%20Bash">

<img src="https://img.shields.io/badge/Ruff-FFD23F.svg?style=flat-square&logo=Ruff&logoColor=black" alt="Ruff">

<img src="https://img.shields.io/badge/Git-FF6B35.svg?style=flat-square&logo=Git&logoColor=white" alt="Git">

<img src="https://img.shields.io/badge/Zsh-FF3366.svg?style=flat-square&logo=Zsh&logoColor=white" alt="Zsh">

</div>

<img width="100%" height="2.5px" src="assets/svg/line.svg" alt="line">

## Overview

This repository contains many common configuration files and development scripts I use daily. With a rich collection of Bash scripts, Python config files, and shell enhancements, this repo helps you:
- 🚀 Automate repetitive dev tasks
- 🛠️ Set up and manage environments fast
- 🎵 Download and convert YouTube playlists
- 📚 Aggregate docs for LLM workflows
- 🧹 Clean, lint, and test codebases with a single command
- ⚡ And much more!

###  Project Structure

The repository is structured as follows:

```sh
.
├── docker
│   └── build_and_publish.sh
├── docs
│   ├── common
│   │   └── python-project-templates.md
│   └── quickstart
│       └── uv.md
├── git
│   └── gitignore.txt
├── just
│   ├── justfile
│   └── python-justfile.md
├── lint
├── make
│   ├── Makefile
│   ├── Makefile.help.table
│   ├── Makefile.poetry.mk
│   └── Makefile.uv.mk
├── python
│   ├──  noxfile.py
│   ├── conf
│   │   ├── pyproject-poetry.toml
│   │   └── pyproject-uv.toml
│   ├── lint
│   ├── tests
│   │   ├── behave.ini
│   │   └── pytest.ini
│   └── type-checker
│       ├── mypy.ini
│       └── ty.toml
├── scripts
│   ├── builds
│   │   ├── docker_hub.sh
│   │   └── pypi.sh
│   ├── common
│   │   ├── clean.sh
│   │   ├── run.sh
│   │   └── test.sh
│   ├── converters
│   │   └── svg_to_png.sh
│   ├── cookie-cutter
│   │   └── create_structure.sh
│   ├── file
│   │   ├── aggregate_docs.sh
│   │   ├── chunk_docs.sh
│   │   └── modify_filenames.sh
│   ├── generators
│   │   └── mkdir_from_tree.sh
│   ├── install
│   │   ├── local_dependencies_uninstall.sh
│   │   ├── local_dependencies.sh
│   │   ├── micromamba.sh
│   │   ├── migrate_to_uv.sh
│   │   ├── precommit.sh
│   │   └── pyflink.sh
│   └── youtube
│       ├── download.log
│       ├── failed_links.txt
│       ├── README.md
│       ├── youtube_downloader.sh
│       └── youtube_links.txt
├── tmux
├── vscode
│   └── settings.json
└── zsh
    ├── .zprofile
    └── .zshrc
```

---

## Installation

To get started with the utility scripts, build the project from source:

1. Clone the repository:

    ```sh
    ❯ git clone https://github.com/eli64s/dots
    ```

2. Navigate to the project directory:

    ```sh
    ❯ cd dots
    ```

## Running Scripts

### 🔻 YouTube Batch Downloader

Batch download YouTube videos from csv file of URLs and convert them to MP3 files.

1. Make the script executable:

    ```sh
    ❯ chmod +x scripts/youtube/youtube_downloader.sh
    ```

2. Prepare a file with YouTube links (one URL per line):

    ```sh
    ❯ printf "https://youtu.be/dQw4w9WgXcQ\nhttps://youtu.be/3JZ_D3ELwOQ" > youtube_links.txt
    ```

3. Run the batch downloader:

    ```sh
    ❯ ./scripts/youtube/youtube_downloader.sh youtube_links.txt
    ```

<!--
### 🔻 Aggregate Docs

The [aggregate_docs.sh] script quickly combines all files from a GitHub repo into one file—perfect for preparing context for LLMs or other tools.

First, let's view the help message for the script:

```sh
❯ bash scripts/file/aggregate_docs.sh -h

Usage: scripts/file/aggregate_docs.sh [-r REPO_URL] [-p POSSIBLE_PATHS] [-o OUTPUT_FILE] [-n REPO_NAME] [-s TO_SEARCH]
  -r REPO_URL       URL of the GitHub repository to clone (required)
  -p POSSIBLE_PATHS Comma-separated list of possible paths to search for markdown files (required)
  -o OUTPUT_FILE    Name of the output markdown file (required)
  -n REPO_NAME      Name of the repository (required)
  -s TO_SEARCH      Pattern to search for markdown files (e.g., "*.md") (required)
```

To run the script, provide the following arguments:

```sh
❯ bash scripts/file/aggregate_docs.sh \
    -r https://github.com/pydantic/pydantic \
    -n pydantic \
    -o pydantic-docs.md \
    -p docs \
    -s "*.md"
```

Alternatively, make the script executable:

```sh
❯ chmod +x scripts/file/aggregate_docs.sh
```

And run it directly:

```sh
❯ ./aggregate_docs.sh \
    -r https://github.com/pydantic/pydantic \
    -p docs \
    -o pydantic-docs.md \
    -n pydantic \
    -s "*.md"
```

## Advanced Configuration

Say you want to clone this repository and use the `.zshrc` file as your shell configuration, and have quick access to the function under the `bash` directory. We can set this up by creating symlinks from the repository to your home directory.

1. Create symlinks from your repository to your home directory:

```sh
# Current repository location
❯ DOTS_DIR="/Users/<username>/GitHub/dots"

# Create symlinks
❯ ln -sf "$DOTS_DIR/zsh/.zshrc" "$HOME/.zshrc"
❯ ln -sf "$DOTS_DIR/bash" "$HOME/.zsh/functions"
```

2. Add the following line to your `.zshrc` file to source the utility scripts:

```zsh
# -- GitHub/dots Repository Integration ---------------------------------------------
DOTS_DIR="$HOME/Projects/GitHub/dots"
DOTS_SCRIPTS="$DOTS_DIR/bash"

# Function to load scripts from directory
function load_scripts() {
	local dir="$1"
	if [ -d "$dir" ]; then
		# Create functions for all scripts instead of aliases
		for script in "$dir"/*.sh; do
			if [ -f "$script" ]; then
				local func_name=$(basename "$script" .sh)
				eval "function $func_name() { $script \"\$@\" }"
			fi
		done
	fi
}

# Load all script directories from dots/bash
for category in $DOTS_SCRIPTS/*; do
	if [ -d "$category" ]; then
		load_scripts "$category"
	fi
done

# Add custom functions directory to fpath
fpath+=("$DOTS_DIR/zsh/functions")
```

3. Now you can run the scripts directly from your terminal:

```sh
❯ aggregate_docs -r https://github.com/pydantic/pydantic-ai \
			-p docs \
			-o pydantic-ai-docs.md \
			-n pydantic-ai \
			-s "*.md"
```

This setup maintains the repository structure while making all bash scripts accessible as commands in your shell.
-->

> [!TIP]
> The [scripts] directory contains a variety of utilities for automating tasks like environment setup, file operations, and codebase management.

<div align="left">
    <a href="#top">
        <img src="assets/svg/button.svg" width="100px" height="100px" alt="return-button">
    </a>
</div>

<img width="100%" height="2.5px" src="assets/svg/line.svg" alt="line">

<!-- REFERENCE LINKS -->
[aggregate_docs.sh]: scripts/file/aggregate_docs.sh
[scripts]: https://github.com/eli64s/dots/tree/main/scripts
