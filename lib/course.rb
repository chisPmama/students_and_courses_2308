require './lib/student'
require 'pry'

class Course
  attr_reader :course, :capacity
  def initialize(course, capacity)
    @course = course
    @capacity = capacity
    @students = []
  end

def enroll(student)
  @students << student
end

def full?
  @students.count == @capacity
end

end
