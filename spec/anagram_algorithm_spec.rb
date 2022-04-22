require('respec')
require('anagram_algorithm')

describe (Anagram_algorithm) do
  describe ('#word_array') do
    it("should check if two words are anagrams") do
      test = Anagram_algorithm.new('dog', 'god')
      expect(test.word_array()).to(eq("These words are anagrams!"))
    end
  end
end


