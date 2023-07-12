#!/bin/bash

output_file=${1:-"$HOME/.bashrc"}
function_content='google() {
  if [ $# -eq 0 ]; then
      echo "Provide a query. E.g., google how to undo rm -rf /"
      return 1
  fi
  query="$*"
  query=$(echo "$query" | sed "s/ /+/g")
  google_search_url="https://www.google.com/search?q=$query"
  xdg-open "$google_search_url"
}'

if grep -q "google()" "$output_file"; then
  echo "google is already in your terminal"
else
  echo "$function_content" >> "$output_file"
  echo "success! try 'google'"
fi
