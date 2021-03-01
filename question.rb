class Question

  attr_accessor :answer, :question

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = self.number1 + self.number2
    @question = "What does #{self.number1} + #{self.number2} equal?"
  end

end
