#!/usr/bin/env bash

set -e

FLAGS=()

[[ -n "$CS2PR_GRACEFUL_WARNINGS" ]] && FLAGS+=("--graceful-warnings")
[[ -n "$CS2PR_COLORIZE" ]] && FLAGS+=("--colorize")
[[ -n "$CS2PR_NOTICES_AS_WARNINGS" ]] && FLAGS+=("--notices-as-warnings")
[[ -n "$CS2PR_ERRORS_AS_WARNINGS" ]] && FLAGS+=("--errors-as-warnings")
[[ -n "$CS2PR_PREPEND_FILENAME" ]] && FLAGS+=("--prepend-filename")
[[ -n "$CS2PR_PREPEND_SOURCE" ]] && FLAGS+=("--prepend-source")

IFS=";" read -r -a FILES <<< "$CS2PR_FILES"

cs2pr "${FLAGS[@]}" "${FILES[@]}"
