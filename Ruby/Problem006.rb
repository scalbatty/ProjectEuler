# encoding: UTF-8
# Project Euler
# Solution to Problem 6 in Ruby
# Problem URL: http://projecteuler.net/problem=6
# Author: Pascal Batty
# 
# ======================================================
#
# The sum of the squares of the first ten natural numbers is,
#
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
#
# ======================================================

start_time = Time.now

x = ((1..100).map {|i| i**2}).reduce(:+)
y = (1..100).reduce(:+)**2
puts y - x

puts "Found in #{Time.now - start_time}s"