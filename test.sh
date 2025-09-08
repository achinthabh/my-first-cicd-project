#!/bin/bash

# Test if the index.html file exists
if [ -f "index.html" ]; then
  echo "File exists. Good."
else
  echo "File index.html does not exist. Bad."
  exit 1
fi

# Test if the file contains the word "Hello"
if grep -q "Hello" "index.html"; then
  echo "File contains the expected word. Good."
else
  echo "File does not contain the expected word. Bad."
  exit 1
fi