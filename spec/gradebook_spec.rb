require 'rspec'
require './lib/course'
require './lib/student'
require './lib/course'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new("Mr. Rogers")
    @physics = Course.new("Physics",3)
    @chemistry = Course.new("Chemistry",2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29}) 
    @student3 = Student.new({name: "Jessica", age: 19})
  end

  it "exists" do
    expect(@gradebook).to be_instance_of(Gradebook)
    expect(@physics).to be_instance_of(Course)
  end

  it "starts with an empty array of courses" do
    expect(@gradebook.courses).to eq([])
  end

  it "can add a courses to the @gradebook for review" do
    @gradebook.add_course(@physics)
    expect(@gradebook.courses.count).to eq(1)
    @gradebook.add_course(@chemistry)
    expect(@gradebook.courses.count).to eq(2)
    expect(@gradebook.courses.class).to eq(Array)
  end

  it "can enroll and list students in the gradebook" do
    @physics.enroll(@student1)
    @physics.enroll(@student2)
    @gradebook.add_course(@physics)
    @gradebook.add_course(@chemistry)
    expect(@gradebook.list_all_students.class).to be(Hash)
    # expect(@gradebook.list_all_students).to eq(Array)
  end

  it "can return the students below the threshold" do
    @physics.enroll(@student1)
    @physics.enroll(@student2)
    @gradebook.add_course(@physics)
    @gradebook.add_course(@chemistry)
    expect(@gradebook.students_below().class).to eq(Array)
    expect(@gradebook.students_below()).to eq()
  end




end