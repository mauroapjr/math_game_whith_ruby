require 'active_support/all'

class Question

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @sum = @number1 + @number2
  end

  def get_question (name) #return the question
    puts "#{name}: What does #{@number1} plus #{@number2} equal?"
  end

  def check_answer (input)#check if the answer matches with the question
    print "What is your answer?"
    @sum == input
  end

end