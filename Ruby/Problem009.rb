# encoding: UTF-8
# Project Euler
# Solution to Problem 9 in Ruby
# Problem URL: http://projecteuler.net/problem=9
# Author: Pascal Batty
# 
# ======================================================
#
#A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
#
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
#
# ======================================================

start_time = Time.now

a = 3
b = 4
c = 0
target_sum = 1000
found = false
c = Math.sqrt(a**2+b**2)
p "a:#{a} b:#{b} c:#{c} => #{a+b+c}"

begin
	a += 1
	b = a+1
	begin 
		b += 1
		c = Math.sqrt(a**2+b**2)
		found = ((a+b+c) == 1000)
		break if found
	end while b < 1000
end while not found

p a*b*c

puts "Found in #{Time.now - start_time}s"