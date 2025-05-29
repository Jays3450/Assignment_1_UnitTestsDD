#!/bin/bash
# shellcheck disable=SC1091
# Source the function from the main script
source CalculateVolume_Main.sh

test_valid_input() {
  echo "Running: test_valid_input"
  output=$(calculateVolume 2 3 4)

  if [[ "$output" == "24" ]]; then
    echo "[PASS]"
  else
    echo "[FAIL] Expected 24, got $output"
  fi
}

# Test 2: Floating point input
test_invalid_floating_input() {
  echo "Running: test_invalid_floating_input"
  output=$(calculateVolume 1.5 2.0 3.0 2>&1)
  if [[ "$output" == "Error: Only integer inputs are supported." ]]; then
    echo "[PASS]"
  else
    echo "[FAIL] Expected error message, got '$output'"
  fi
}

# Test 3: Negative value input
test_invalid_negative_input() {
  echo "Running: test_invalid_negative_input"
  output=$(calculateVolume -2 3 4 2>&1)
  if [[ "$output" == "Error: Only integer inputs are supported." ]]; then
    echo "[PASS]"
  else
    echo "[FAIL] Expected error message, got '$output'"
  fi
}

# Test 4: A zero value input
test_zero_input() {
  echo "Running: test_zero_input"
  output=$(calculateVolume 0 5 3)
  if [[ "$output" == "0" ]]; then
    echo "[PASS]"
  else
    echo "[FAIL] Expected 0, got '$output'"
  fi
}
# run the test cases
run_all_tests() {
  test_valid_input
  test_invalid_floating_input
  test_invalid_negative_input
  test_zero_input
}

run_all_tests

