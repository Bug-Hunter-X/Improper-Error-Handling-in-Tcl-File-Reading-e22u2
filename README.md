# Tcl File Reading Error Handling Bug

This repository demonstrates a common error in Tcl file I/O: insufficient error handling. The `bug.tcl` script attempts to read a file that may not exist.  The error handling is rudimentary, potentially leading to unexpected behavior or crashes when the file access fails beyond a simple -1 return from open. The `bugSolution.tcl` shows improved error handling using `catch`.

## Bug
The `read_file` procedure lacks robust error handling.  It only checks if `open` returns -1, which is not comprehensive enough to cover all file access failures.

## Solution
The solution uses the `catch` command to handle potential errors during file operations.  This provides more graceful error handling and prevents unexpected crashes.