# encoding: UTF-8
# Project Euler
# Solution to Problem 4 in Ruby
# Problem URL: http://projecteuler.net/problem=4
# Author: Pascal Batty
# 
# ======================================================
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
#
# ======================================================
# Answer : 906609

class Integer
	def palindrome?
		str = "#{self}"
		(str == str.reverse)
	end
end

start_time = Time.now

pal = 0

999.downto(100) do |x|
	999.downto(x) do |y|
		break if pal > x*y
		pal = x*y if (x*y).palindrome?
	end
end

puts pal
puts "Found in #{Time.now - start_time}s"