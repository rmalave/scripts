#!/usr/bin/env ruby
#Ge input from user
puts "Text Please: "
text = gets.chomp
words = text.split()

#Create a hash to count word ocurrences
frequencies = Hash.new(0)

#count word ocurrences
words.each { |word| frequencies[word] += 1 }

#Sort word ocurrences
frequencies = frequencies.sort_by { |word, count| count }
frequencies.reverse!

#Print results
frequencies.each { |word, frequency| puts word + ' ' + frequency.to_s }
