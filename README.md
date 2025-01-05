# Ada Input Validation and Exception Handling Bug

This repository demonstrates a common bug in Ada programming: insufficient input validation and overly broad exception handling. The `Check_Range` function lacks robust input validation, and the exception handler in `Main` fails to provide specific error messages.

## Bug Description

The `Main` procedure attempts to read an integer from user input using `Get`. If the user enters non-numeric data, this will raise an exception. The current `Check_Range` function's exception handler catches `others`, which is too broad and masks the specific reason for failure.  Additionally, no input validation is present to prevent this from happening in the first place.

## Solution

The solution demonstrates improved input validation using `Ada.Text_IO.Get` and more specific exception handling.  The code now checks for end-of-file and invalid input, providing more informative error messages.