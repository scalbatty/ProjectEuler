# encoding: UTF-8
# Project Euler
# Solution to Problem 2 in Ruby
# Problem URL: http://projecteuler.net/problem=2
# Author: Pascal Batty
# 
# ======================================================
#
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
#
# ======================================================

def fib(target)
	series = [1, 2]
	begin
		series << series.last(2).reduce(:+)
	end while series.last < target
	series.delete(series.last)
	series
end

start_time = Time.now

puts fib(4000000).select {|i| i.even?}.reduce(:+)

puts "Found in #{Time.now - start_time}s"