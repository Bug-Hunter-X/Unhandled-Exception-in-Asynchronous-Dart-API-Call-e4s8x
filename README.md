# Unhandled Exception in Asynchronous Dart API Call

This repository demonstrates a common error in asynchronous Dart code and provides a solution.

The `bug.dart` file shows an example of an API call that doesn't properly handle exceptions, while `bugSolution.dart` provides a more robust version with improved exception handling.

**Problem:**
The original code lacks comprehensive error handling for the asynchronous API call. If the API request fails, the exception might not be caught correctly, leading to unexpected program behavior or crashes.

**Solution:**
The improved code includes a `try-catch` block to explicitly handle potential exceptions during the API call.  The `rethrow` statement allows the exception to be handled by higher-level functions if needed, facilitating better error management.