# Shell Script Bug: Subshell Scope Issue

This repository demonstrates a common yet subtle bug in bash scripting related to subshell scope when processing files found by `find`. The script attempts to process files in the current directory, but due to the subshell created by the parenthesis `(...)`, the exit status (`$?`) from `some_command` is not correctly checked. 

The `bug.sh` file contains the erroneous code, while `bugSolution.sh` provides the corrected version. 