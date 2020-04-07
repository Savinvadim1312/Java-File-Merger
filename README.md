# File-Merger For InteliJ Idea
This is how you can merge multiple `java | kotlin` files into one file. This is very useful for CodinGame participants because CodinGame requires you to upload everything in one file.

# Installation
1) Download file-merger.sh from this repo into the root of your project.
2) Make sure it is executable (`> chmod +x file-merger.sh`)
3) Install File Watcher plughin for Intelij Idea
4) Open Settings > Tools > FileWatcher
5) Click '+' , and select custom file
6) Name accordingly (Create separate watchers for each file type)
   1) File type = Any (or Java) | scope = "Project Files" | program = path-to-root-project/file-merger.sh | arguments=$Sourcepath$ java
   2) File type = Any (or Kotlin) | scope = "Project Files" | program = path-to-root-project/file-merger.sh | arguments=$Sourcepath$ kt
7) Apply


# Troubleshooting
- Make sure output folder exists (root-project/out)
- Try to run the script manually from root-project dir:
```bash
>./file-merger.sh ./src java
```

# Misc
This script will search for all files of specified type under any number of folders from `root-project/src/**` ignoring files under `root-project/src/test/**`.
It also strips ou package declarations.
For java classes you have to manually remove the `public` keyword from them as only one class may have that when declaring multiple classes on the same file.

# TODO
- [ ] Strip `public` keyword automatically
