#!/usr/bin/env bash
set -euo pipefail
cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.."
mkdir -p build docs
latexmk -pdf -shell-escape -interaction=nonstopmode -halt-on-error -outdir=build main.tex
cp build/main.pdf docs/thesis.pdf
