
# Homework 2: Safe Factorial Calculator

This Fortran program calculates the factorial of a
non-negative integer using a do loop.

It uses int64 for the factorial result, checks input
values, and checks for integer overflow before each
multiplication. It allows repeated calculations.

## Compilation

gfortran factorial.f90 -o factorial.exe

## Execution

.\factorial.exe

## Testing

Record the expected and observed results for:
- Negative input
- N = 0
- N = 5
- N = 13
- N = 20
- N = 21
- Invalid menu choice
- Exit option

## Overflow explanation

The program checks whether the current factorial
exceeds huge(factorial_value) / i before multiplying.
If the check fails, it stops the calculation and
reports that the factorial does not fit in int64.

