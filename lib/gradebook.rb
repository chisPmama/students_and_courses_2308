require './lib/student'
require './lib/course'
require 'pry'

class Gradebook
  attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    list = {}
    @courses.each do |course|
      list.merge!({course.name=>course.students})
    end
    list
  end
end

# binding.pry
# list_all_students => {"Physics" => [Student1, Student2], "Math" => [Student3, Student2]}