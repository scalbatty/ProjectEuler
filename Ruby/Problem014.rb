# encoding: UTF-8
# Project Euler
# Solution to Problem 14 in Ruby
# Problem URL: http://projecteuler.net/problem=14
# Author: Pascal Batty
# 
# ======================================================
#
#	The following iterative sequence is defined for the set of positive integers:
#
#	n -> n/2 (n is even)
#	n -> 3n + 1 (n is odd)
#
#	Using the rule above and starting with 13, we generate the following sequence:
#
#	13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
#	It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
#	Which starting number, under one million, produces the longest chain?
#
#	NOTE: Once the chain starts the terms are allowed to go above one million.
#
# ======================================================

class Integer 
	def series
		n = self
		series = [n]
		begin
			n = n.even? ? n/2 : 3*n + 1
			series << n
		end while (n > 1)
		return series
	end
end

start_time = Time.now

greatest = 0
greatest_count = 0
(1...1000000).each do |i|
	count = i.series.count
	if count > greatest_count
		greatest = i 
		greatest_count = count
	end
end

puts greatest

puts "Found in #{Time.now - start_time}s"