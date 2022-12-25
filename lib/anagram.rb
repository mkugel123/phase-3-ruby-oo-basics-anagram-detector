require 'pry'

class Anagram
  attr_accessor :initial_word
  def initialize(initial_word)
    @initial_word = initial_word
  end
  def match(array_of_words)
    matched_word = []
    array_of_words.each do |word|
      rearanged_word = word.chars.sort
      if rearanged_word == @initial_word.chars.sort
        matched_word << word
      end
    end
    matched_word
  end
end