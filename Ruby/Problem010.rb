# encoding: UTF-8
# Project Euler
# Solution to Problem 10 in Ruby
# Problem URL: http://projecteuler.net/problem=10
# Author: Pascal Batty
# 
# ======================================================
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
#
# ======================================================

require "prime"

start_time = Time.now

limit = 2*10**6
puts (1...limit).to_a.inject(0) {|sum, i| sum += (Prime.prime?i)? i : 0}

puts "Found in #{Time.now - start_time}"