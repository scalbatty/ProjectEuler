# encoding: UTF-8
# Project Euler
# Solution to Problem 7 in Ruby
# Problem URL: http://projecteuler.net/problem=7
# Author: Pascal Batty
# 
# ======================================================
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?
#
# ======================================================
# Answer: 104743

require "prime"

start_time = Time.now

i=0
counter = 0
begin
	i += 1
	counter += 1 if Prime.prime?i
end while (counter < 10001)
puts i

puts "Found in #{Time.now - start_time}s"