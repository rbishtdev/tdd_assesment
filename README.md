# String Calculator (TDD)

This project is an implementation of the **String Calculator kata** using **Test-Driven Development (TDD)** in Dart.

---

## Problem Summary

The `StringCalculator` supports the following requirements:

1. **Basic Calculator Method**  
   Create a simple String Calculator with the method signature:  
   `int add(String numbers)`
    - Returns the sum of numbers in the input string
    - Empty string (`""`) returns `0`
    - Supports single (`"1"`) and two numbers (`"1,2"`)

2. **Unknown Amount of Numbers**  
   The `add` method can handle an unknown number of values separated by delimiters.

3. **Newline as a Delimiter**  
   Newlines (`\n`) are allowed as delimiters in addition to commas.  
   Example:
    - `"1\n2,3"` → `6`

4. **Custom Delimiters**  
   Custom delimiters are supported using the format:  
   `//[delimiter]\n[numbers…]`  
   Example:
    - `"//;\n1;2"` → `3`  
      The delimiter declaration is optional, and default delimiters remain supported.

5. **Negative Number Validation**  
   Calling `add` with negative numbers throws an exception with the message:  
   `"negative numbers not allowed"`  
   If multiple negative numbers are present, all are listed in the exception message.

6. **Ignore Large Numbers**  
   Numbers greater than `1000` are ignored.  
   Example:
    - `"2,1001"` → `2`

7. **Delimiters of Any Length**  
   Delimiters of any length are supported when defined in brackets.  
   Example:
    - `"//[***]\n1***2***3"` → `6`

---

## Implementation Approach

- Implemented using a `StringCalculator` class as required
- Logic kept minimal and test-driven

This approach strictly follows **TDD principles** and keeps the code readable and maintainable.

---

## Project Structure

- lib/
   └─ string_calculator.dart
- test/
    └─ string_calculator_test.dart

---

## Test Result

![Test Results](screenshots/test_results.png)

---

## Running Tests

Run the tests using:

```bash
dart test



