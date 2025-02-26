#!/usr/bin/env bash
set -e

# Define your input tree as a multiline string.
tree=$(cat <<'EOF'
src/markitecture
├── __init__.py
├── __main__.py
├── cli
│   ├── __init__.py
│   ├── app.py
│   └── commands
│       ├── __init__.py
│       ├── config.py
│       ├── crosslinks.py
│       ├── links.py
│       ├── metrics.py
│       ├── mkdocs.py
│       └── split.py
├── errors.py
├── generators
│   ├── __init__.py
│   └── configs
│       ├── __init__.py
│       ├── mintlify_json.py
│       └── mkdocs_yaml.py
├── metrics
│   ├── __init__.py
│   ├── analyzer.py
│   ├── badges
│   │   ├── __init__.py
│   │   ├── base.py
│   │   ├── compact.py
│   │   ├── detailed.py
│   │   ├── minimal.py
│   │   ├── modern.py
│   │   ├── retro.py
│   │   └── shields.py
│   └── svg_generator.py
├── processing
│   ├── __init__.py
│   ├── crosslinks_validator.py
│   ├── link_validator.py
│   ├── reflink_converter.py
│   ├── reflink_extractor.py
│   └── text_splitter.py
├── settings
│   ├── __init__.py
│   ├── config.py
│   └── validators.py
├── utils
│   ├── __init__.py
│   ├── console.py
│   ├── file_handler.py
│   └── sanitizer.py
└── version.py
EOF
)

# Read all lines into an array without using mapfile.
lines=()
while IFS= read -r line; do
    lines+=("$line")
done <<< "$tree"

# A stack (array) to hold the current path components.
declare -a path_stack=()

# Helper function to compute indent level from a raw line.
# It removes the tree drawing characters and counts spaces.
get_level() {
    local line="$1"
    local indent_part=""
    if [[ "$line" == *"── "* ]]; then
        indent_part="${line%%── *}"
    else
        indent_part=""
    fi
    # Remove vertical bars
    local clean_indent="${indent_part//│/}"
    # Count spaces. Assume each indent level equals 4 spaces.
    local indent_length="${#clean_indent}"
    echo $(( indent_length / 4 ))
}

# Loop through each line using indices.
for (( i=0; i<${#lines[@]}; i++ )); do
    raw_line="${lines[i]}"
    # Remove any trailing carriage returns.
    raw_line="${raw_line%%$'\r'}"
    # Skip empty lines.
    [[ -z "$raw_line" ]] && continue

    # Parse the line: if it contains the drawing marker, separate indent and name.
    if [[ "$raw_line" == *"── "* ]]; then
        indent_part="${raw_line%%── *}"
        name="${raw_line##*── }"
    else
        indent_part=""
        name="$raw_line"
    fi

    # Trim any leading/trailing whitespace from the name.
    name=$(echo "$name" | xargs)

    # Determine current line's level.
    level_current=$(get_level "$raw_line")

    # Update the path stack at the current level.
    path_stack[$level_current]="$name"
    # Remove any deeper levels.
    for (( j = level_current + 1; j < ${#path_stack[@]}; j++ )); do
        unset path_stack[j]
    done

    # Build the full path from the stack.
    full_path=""
    for (( j=0; j<=level_current; j++ )); do
        comp="${path_stack[j]}"
        if [[ -z "$full_path" ]]; then
            full_path="$comp"
        else
            full_path="$full_path/$comp"
        fi
    done

    # Decide whether this line represents a directory:
    #   - if the name ends with '/', or
    #   - if the next line exists and has a greater indent level.
    is_dir=false
    if [[ "$name" == */ ]]; then
        is_dir=true
    elif (( i+1 < ${#lines[@]} )); then
        next_line="${lines[i+1]}"
        next_level=$(get_level "$next_line")
        if (( next_level > level_current )); then
            is_dir=true
        fi
    fi

    if $is_dir; then
        # Create the directory.
        mkdir -p "$full_path"
        echo "Created directory: $full_path"
    else
        # Create the parent directory and then the file.
        mkdir -p "$(dirname "$full_path")"
        touch "$full_path"
        echo "Created file: $full_path"
    fi
done
