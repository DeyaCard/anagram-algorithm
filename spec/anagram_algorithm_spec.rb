require('rspec')
require('anagram_algorithm')

describe ("Anagram_algorithm") do
  describe("#anagrams?") do
    it('should check if two words are anagrams') do
      input = Anagram_algorithm.new("dog", "god")
      expect(input.anagrams?()).to(eq(true))
    end
    
    it('should return false if two words are not anagrams') do
      input = Anagram_algorithm.new("bug", "toy")
      expect(input.anagrams?()).to(eq(false))
    end
  end

  describe("#antigrams?") do
    it('should check if two words are antigrams') do
      input = Anagram_algorithm.new("mom", "dad")
      expect(input.antigrams?()).to(eq(true))
    end

    it('should check if any input has a letter in common') do
      input = Anagram_algorithm.new("the", "yep")
      expect(input.antigrams?()).to(eq(false))
    end
  end


end



