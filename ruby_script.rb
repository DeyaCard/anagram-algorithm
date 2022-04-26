#!/usr/bin/ruby

require ('./lib/anagram_algorithm.rb')
puts 'Enter a word to get an anagram.'
user_word1 = gets.chomp
puts "enter a second word"
user_word2 = gets.chomp
input = Anagram_algorithm.new(user_word1,user_word2)
if input.anagrams?
  puts "those words are anagrams"
else 
  puts "those words are not anagrams"
end

if input.antigrams?
  puts "those words are antigrams"
else
  puts "thorse words are not antigrams"
end


