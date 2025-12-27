for f in *; do 
  mv "$f" "$(echo "$f" | tr 'A-Z' 'a-z' | tr -d ' ')"
done
