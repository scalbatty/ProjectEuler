# encoding: UTF-8
# Project Euler
# Solution to Problem 3 in Ruby
# Problem URL: http://projecteuler.net/problem=3
# Author: Pascal Batty
# 
# ======================================================
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
#
# ======================================================
# Answer : 6857

require "prime"

start_time = Time.now

number = 600851475143
largestPrimeFactor = 0
Prime.each(Math.sqrt(number)) do |prime|
	largestPrimeFactor = prime if (number%prime == 0)
end 

puts largestPrimeFactor
puts "Found in #{Time.now - start_time}s"