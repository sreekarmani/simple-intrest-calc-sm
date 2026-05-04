#!/bin/bash

# Simple Interest Calculator

echo "---------------------------------------"
echo "      Simple Interest Calculator       "
echo "---------------------------------------"

# Prompt user for input
read -p "Enter the principal amount: " principal
read -p "Enter the annual rate of interest (in %): " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest
# Formula: SI = (P * R * T) / 100
# Using 'bc' for decimal calculations
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
total=$(echo "scale=2; $principal + $interest" | bc)

echo "---------------------------------------"
echo "Results:"
echo "Principal:        $principal"
echo "Interest Rate:    $rate%"
echo "Time Period:      $time years"
echo "---------------------------------------"
echo "Simple Interest:  $interest"
echo "Total Amount:     $total"
echo "---------------------------------------"
