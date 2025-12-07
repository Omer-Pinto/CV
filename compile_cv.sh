#!/bin/bash

# CV LaTeX Compilation Script
# Compiles resume.tex to PDF using Docker and TeX Live 2023

set -e

# Default output directory
OUTPUT_DIR="output"

# Parse arguments
while [[ $# -gt 0 ]]; do
  case $1 in
    --folder=*)
      OUTPUT_DIR="${1#*=}"
      shift
      ;;
    --folder)
      OUTPUT_DIR="$2"
      shift 2
      ;;
    *)
      echo "Unknown option: $1"
      echo "Usage: $0 [--folder <output_directory>] or [--folder=<output_directory>]"
      exit 1
      ;;
  esac
done

# Get script directory (CV root)
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
LATEX_DIR="$SCRIPT_DIR/latex"
OUTPUT_PATH="$SCRIPT_DIR/$OUTPUT_DIR"

# Create output directory
mkdir -p "$OUTPUT_PATH"

echo "Compiling CV..."
echo "LaTeX dir: $LATEX_DIR"
echo "Output dir: $OUTPUT_PATH"

# Compile with Docker using TeX Live 2023
cd "$LATEX_DIR"
docker run --rm -v "$(pwd):/workdir" -w /workdir \
  texlive/texlive:TL2023-historic \
  xelatex -interaction=nonstopmode resume.tex

# Clean up build artifacts
rm -f *.aux *.log *.out

# Move PDF to output directory
mv resume.pdf "$OUTPUT_PATH/"

echo "✅ Compilation successful!"
echo "📄 PDF: $OUTPUT_PATH/resume.pdf"

# Open PDF (macOS)
if [[ "$OSTYPE" == "darwin"* ]]; then
  open "$OUTPUT_PATH/resume.pdf"
fi
