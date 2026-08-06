#!/bin/bash
# -*- coding: utf-8 -*-
# @Author: H. T. Duong Vu

mkdir -p data

# Declare an associative array of filenames and URLs
declare -A files=(
  ["NEURAI"]="https://zenodo.org/records/18976769/files/NEURAI.zip?download=1"
)

# Download the files
for name in "${!files[@]}"; do
  python -m scripts.data_installer --url "${files[$name]}" --output "data/${name}.zip"
done

# Ensure unzip is installed
if ! command -v unzip &> /dev/null; then
  echo "Installing unzip..."
  apt update && apt install -y unzip
fi

# Unzip the files
for name in "${!files[@]}"; do
  unzip "data/${name}.zip" -d data/
done

# Remove zip files after extraction
for name in "${!files[@]}"; do
  rm "data/${name}.zip"
done