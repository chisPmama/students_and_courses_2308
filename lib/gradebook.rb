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

  def students_below(threshold)
    students = []
    @courses.each do |course|
      course.students.each do |student|
        students << student
      end
    end
    students.find_all do |student|
      student.grade < threshold      
    end
  end

  def students_in_range(min, max)
    students = []
    @courses.each do |course|
      course.students.each do |student|
        students << student
      end
    end
    students.find_all do |student|
      student.grade >= min && student.grade <= max    
    end
  end

  # def all_grades
  #   all_grades = {}
  #   @courses.each do |course|
  #     all_grades.merge!({course=>course.students.grades})
  #   end
  # end

end

binding.pry
# list_all_students => {"Physics" => [Student1, Student2], "Math" => [Student3, Student2]}