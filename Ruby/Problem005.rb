# encoding: UTF-8
# Project Euler
# Solution to Problem 5 in Ruby
# Problem URL: http://projecteuler.net/problem=5
# Author: Pascal Batty
# 
# ======================================================
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#
# ======================================================

start_time = Time.now

i = 0
begin
	i += 1 
	found = true
	20.downto(1) do |divider|
		if not (i%divider == 0)
			found = false
			break
		end
	end
end while not found
puts i
puts "Found in #{Time.now - start_time}s"