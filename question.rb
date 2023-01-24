class Question

  attr_reader :correct_answer

  def initialize
    @correct_answer = 0
  end

  def printQuestion
    first_number = rand(1..20)
    second_number = rand(1..20)
    @correct_answer = first_number + second_number
    return "#{first_number} + #{second_number} equal ?"
  end

  def check_answer(correct_answer, answer_given)
    correct_answer == answer_given
  end
  
end