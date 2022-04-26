require('pry')

class Anagram_algorithm
  attr_reader(:inputA, :inputB)

  def initialize(inputA, inputB)
    @inputs = [inputA, inputB]
    @modified_inputs = [inputA.downcase, inputB.downcase]
    @modified_inputs.each do |input|
      input.each_char do |chr|
        if !(chr =~ /[[:alpha:]]/)
          @modified_inputs.delete(input)
        input = input.delete(chr)
          @modified_inputs.prepend(input)
        end
      end
    end
  end


  def anagrams?()
    if @modified_inputs[0].chars.sort.join == @modified_inputs[1].chars.sort.join
      return true
    end
    false
  end

  def antigrams?()
    @modified_inputs[0].each_char do |chr|
      if @modified_inputs[1].include?(chr)
        return false
      end
    end
    true
  end
end



