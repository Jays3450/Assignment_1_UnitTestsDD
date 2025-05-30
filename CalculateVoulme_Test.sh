#!/bin/bash
# shellcheck disable=SC1091
# Source the function from the main script
source CalculateVolume_Main.sh

test_valid_input() {
  echo "Running: test_valid_input"
  output=$(calculateVolume 1 2 3)

  if [[ "$output" == "6" ]]; then
    echo "[PASS]"
  else
    echo "[FAIL] Expected 6, got $output"
  fi
}

# Test 1: A Decimal value input
test_invalid_floating_input() {
  echo "Running: test_invalid_floating_input"
  output=$(calculateVolume 1.5 4.0 2.2)
  if [[ "$output" == "Error: Only integer inputs are supported." ]]; then
    echo "[PASS]"
  else
    echo "[FAIL] Expected error message, got '$output'"
  fi
}

# Test 2: A Negative value input
test_invalid_negative_input() {
  echo "Running: test_invalid_negative_input"
  output=$(calculateVolume -1 2 3)
  if [[ "$output" == "Error: Only integer inputs are supported." ]]; then
    echo "[PASS]"
  else
    echo "[FAIL] Expected error message, got '$output'"
  fi
}

# Test 3: A zero value input
test_zero_input() {
  echo "Running: test_zero_input"
  output=$(calculateVolume 0 5 3)
  if [[ "$output" == "0" ]]; then
    echo "[PASS]"
  else
    echo "[FAIL] Expected 0, got '$output'"
  fi
}

# Test 4: A non numeric input
test_non_numeric_input() {
  echo "Running: test_non_numeric_input"
  output=$(calculateVolume 2 a 4)
  if [[ "$output" == *"Error: Only integer inputs are supported."* ]]; then
    echo "[PASS]"
  else
    echo "[FAIL] Expected error for non-numeric input, got $output"
  fi
}

# Test 5: Missing Parameters
test_missing_parameters() {
  echo "Running: test_missing_parameters"
  output=$(calculateVolume 5 6)
  if [[ "$output" == "Error: Exactly 3 parameters (height width length) are required." ]]; then
    echo "[PASS]"
  else
    echo "[FAIL] Expected parameter error, got '$output'"
  fi
}

# run the test cases
run_all_tests() {
  test_valid_input
  test_invalid_floating_input
  test_invalid_negative_input
  test_zero_input
  test_non_numeric_input
  test_missing_parameters
}

run_all_tests

