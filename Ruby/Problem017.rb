# encoding: UTF-8
# Project Euler
# Solution to Problem 17 in Ruby
# Problem URL: http://projecteuler.net/problem=17
# Author: Pascal Batty
# 
# ======================================================
#
#	If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
#	If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
#
#	NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
#
# ======================================================

start_time = Time.now

class Integer
	def to_british
		return "one thousand" if self == 1000
		if self < 20
			return "zero" if self == 0
			return "one" if self == 1
			return "two" if self == 2
			return "three" if self == 3
			return "four" if self == 4
			return "five" if self == 5
			return "six" if self == 6
			return "seven" if self == 7
			return "eight" if self == 8
			return "nine" if self == 9
			return "ten" if self == 10
			return "eleven" if self == 11
			return "twelve" if self == 12
			return "thirteen" if self == 13
			return "fourteen" if self == 14
			return "fifteen" if self == 15
			return "sixteen" if self == 16
			return "seventeen" if self == 17
			return "eighteen" if self == 18
			return "nineteen" if self == 19
		end
		if self < 100
			unit = self%10
			return "twenty" if self == 20
			return "twenty-#{unit.to_british}" if self < 30
			return "thirty" if self == 30
			return "thirty-#{unit.to_british}" if self < 40 
			return "forty" if self == 40
			return "forty-#{unit.to_british}" if self < 50
			return "fifty" if self == 50
			return "fifty-#{unit.to_british}" if self < 60
			return "sixty" if self == 60
			return "sixty-#{unit.to_british}" if self < 70
			return "seventy" if self == 70
			return "seventy-#{unit.to_british}" if self < 80
			return "eighty" if self == 80
			return "eighty-#{unit.to_british}" if self < 90
			return "ninety" if self == 90
			return "ninety-#{unit.to_british}" if self < 100
		end
		if self < 1000
			return "#{(self/100).to_british} hundred" if self%100 == 0
			return "#{(self/100).to_british} hundred and #{(self%100).to_british}"
		end
	end
end


puts (1..1000).map {|i| i.to_british.gsub(/[ -]/, '').length}.reduce(:+)

puts "Found in #{Time.now - start_time}s"