# Volume Calculator for Rectangular Prism (TDD in Bash)

##  Overview
This project demonstrates Test-Driven Development (TDD) using Bash scripting to calculate the volume of a rectangular prism.

**Formula:**  
`Volume = Height x Width x Length`

##  Files
- `CalculateVolume_Main.sh`: Main script to calculate volume.
- `CalculateVoulme_Test.sh`: Contains run test cases.
- `README.md`: Project documentation include 
     - `implemented_tests`: List of test cases that are added.
     - `unimplemented_tests`: List of test cases that could be added later.

## Implemented Test Cases

| Test Name                     | Description                                                   | Expected Outcome               |
|--------------------------     |---------------------------------------------------------------|--------------------------------|
| `test_valid_input`            | Tests volume with valid positive integers `1 2 3`             | `6`                           |
| `test_invalid_floating_input` | Tests float values like `1.5 4.0 2.2`                         | Error message                  |
| `test_invalid_negative_input` | Tests negative input like `-1 2 3`                            | Error message                  |
| `test_zero_dimension`         | Tests with zero as one of the dimensions `0 5 3`              | Volume `0`                     |
| `test_non_numeric_input`      | Tests if one or more dimensions are non numeric like `a`      | Error message                  |
| `test_missing_parameters`     | Tests if one or more dimensions are missing                   | Error message                  |

---

## Planned but Not Yet Implemented Test Cases

| Test Name                 | Description                                                                 |
|--------------------------|-----------------------------------------------------------------------------|
| `test_non_numeric_input` | Inputs like `a b c` should return an error indicating invalid numeric input. |
| `test_large_numbers`     | Inputs like `10000 20000 30000` to verify correct handling of large volumes. |
| `test_blank_input`       | No inputs at all — negative should return an error about missing parameters. |
| `test_all_ones`          | Inputs like `1 1 1` to test the smallest positive valid volume (should be 1).|
| `test_special_characters`| Inputs like `@ # $` — should return an error indicating invalid characters.   |
---

##  How to Run

### Run the main script:
```bash
bash CalculateVolume_Main.sh 1 2 3
# Output: 6

### Run the Test script:
```bash
bash CalculateVoulme_Test.sh 
# run all test cases one by one
