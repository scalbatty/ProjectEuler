# encoding: UTF-8
# Project Euler
# Solution to Problem 1 in Ruby
# Problem URL: http://projecteuler.net/problem=1
# Author: Pascal Batty
# 
# ======================================================
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
#
# ======================================================

start_time = Time.now

puts (0...1000).inject { |sum, i| sum += (i%3 == 0 || i%5 == 0) ? i : 0}

puts "Found in #{Time.now - start_time}s"