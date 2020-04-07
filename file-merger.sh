#!/bin/bash
src_path=$1
file_type=$2
out_file=$src_path/../out/Out.$file_type

#echo "src: $src_path"
#echo "type: $file_type"
#echo "out: $out_file"

# clear out_file
rm -rf "$out_file"

# recreate out_file
#touch "$out_file"

# copy all import statements first
find "$src_path" ! -path '*/test/*' -type f -name "*.$file_type" -exec grep -E 'import' {} \; > "$out_file"

# copy everything else excluding package and import statements
find "$src_path" ! -path '*/test/*' -type f -name "*.$file_type" -exec grep -Ev 'package|import' {} \; >> "$out_file"

