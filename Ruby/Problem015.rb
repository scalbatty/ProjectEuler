# encoding: UTF-8
# Project Euler
# Solution to Problem 15 in Ruby
# Problem URL: http://projecteuler.net/problem=15
# Author: Pascal Batty
# 
# ======================================================
#
#	Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.
#
#
#	How many routes are there through a 20x20 grid?
#
# ======================================================

start_time = Time.now

pascal = []
(0..(20*20)).each do |i|
	pascal[i] = []
	(0..i).each do |j|
		if (j == 0) || (j == i)
			pascal[i][j] = 1
		else
			pascal[i][j] = pascal[i-1][j-1] + pascal[i-1][j]
		end
	end
end

p pascal[40][20]


puts "Found in #{Time.now - start_time}s"