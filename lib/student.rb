require 'pry'

class Student
  attr_reader :name, :age, :scores
  def initialize(student_details)
    @name = student_details[:name]
    @age = student_details[:age]
    @scores = []
  end

def log_score(score)
  @scores << score
end

def grade
  sum = (0).to_f
  scores.each do |score|
    score = score.to_f
    sum += score
  end
  sum/((scores.count).to_f).to_f
end

end

