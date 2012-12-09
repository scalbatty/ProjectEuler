# encoding: UTF-8
# Project Euler
# Solution to Problem 16 in Ruby
# Problem URL: http://projecteuler.net/problem=16
# Author: Pascal Batty
# 
# ======================================================
#
#	2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
#	What is the sum of the digits of the number 2^1000?
#
# ======================================================

start_time = Time.now

number = 2
(1000-1).times {number *= 2}
puts number.to_s.split("").map {|x| x.to_i}.reduce(:+)


puts "Found in #{Time.now - start_time}s"