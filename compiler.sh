#!/bin/bash
path=$1
> $path/../bin/Player.java
grep -Eh 'import' $path/*.java > $path/../bin/Player.java
grep -vh 'import' $path/*.java | grep -v 'package' >> $path/../bin/Player.java
