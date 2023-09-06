require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  it "exists" do
    course = Course.new("Calculus", 2)
    expect(course).to be_instance_of(Course)
  end

  it "can pull the correct information including name, capacity, and store an array of students" do
    course = Course.new("Calculus", 2)
    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
    expect(course.students).to eq([])
  end

  it "checks if the course is full" do
    course = Course.new("Calculus", 2)
    expect(course.full?).to eq(false)
  end

  it "can enroll students to the course" do
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})  
    course.enroll(student1)    
    course.enroll(student2)
    expect(course.students.count).to eq(2)
  end

  it "can verify if the course is full in comparison to capacity value" do
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})  
    course.enroll(student1)    
    course.enroll(student2)
    expect(course.full?). to eq(true)
  end

end
