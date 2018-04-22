# Java-File-Merger For Intelij Idea
This is how you can merge multiple java files into one file. This is very useful for CodinGame participants because CodinGame requires you to upload everything in one file.
# Installation
0) Download compiler.sh from this repo into the root of your project.
1) Install File Watcher plughin for Intelij Idea
2) Open Settings > Tools > FileWatcher
3) Click '+' , and select custom file
4) File type = Any, scope = "Project Files", program = path-to-root-project/compiler.sh    arguments=$Projectpath$
5) Apply
