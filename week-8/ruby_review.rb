# Introduction to Inheritance
# I worked on this challenge by myself.


# Pseudocode
# Input: Student list
# Output:
# Steps:

# GLOBALCOHORT
# Create a CLASS GlobalCohort with the attributes students, name, p0_start_date, immersive_start_date, graduation_date, email_list and number_of_students.
# In GlobalCohort, add methods currently_in_phase and graduated

# LOCALCOHORT
# Create a CLASS LocalCohort that inherits from GlobalCohort.
# LocalCohort should have the attributes city, students, email_list, number_of_students
# In LocalCohort, add methods add_student, remove_student

# INITIAL SOLUTION

# require 'date'

# class Student
#   attr_reader :name, :email, :location
#   def initialize(name, email, location)
#     @name=name
#     @email=email
#     @location=location
#   end
# end

# class GlobalCohort
#   attr_reader :name, :p0_start_date, :immersive_start_date, :graduation_date, :number_of_students
#   attr_accessor :students, :emails
#   def initialize(student_list, name, p0_start_date, immersive_start_date, graduation_date)
#     @students = student_list
#     @name = name
#     @p0_start_date = p0_start_date
#     @immersive_start_date = immersive_start_date
#     @graduation_date = graduation_date
#     @number_of_students = @students.length
#     @emails = []
#     for student in @students
#       @emails.push(student.email)
#     end
#   end

#   def currently_in_phase
#     days_in_course = Date.today - p0_start_date
#     days_in_course.to_i
#     case days_in_course
#       when days_in_course < 0 then "Course has not started."
#       when 0...63 then "Phase 0"
#       when 63...85 then "Phase 1"
#       when 85...106 then "Phase 2"
#       when 106...127 then "Phase 3"
#       else "Graduated"
#     end
#   end

#   def graduated
#     Date.today >= graduation_date ? true : false
#   end

#   def add_student(student)
#     @students.push(student)
#   end

#   def remove_student(student_name)
#     @students.delete_if {|student| student.name === student_name}
#   end
# end

# class LocalCohort < GlobalCohort
#   attr_reader :location
#   def initialize(student_list, name, p0_start_date, immersive_start_date, graduation_date,location)
#     super(student_list, name, p0_start_date, immersive_start_date, graduation_date)
#     @location = location
#   end
# end

# REFACTORED SOLUTION

require 'date'

class Student
  attr_reader :name, :email, :location
  def initialize(name, email, location)
    @name=name
    @email=email
    @location=location
  end
end

class GlobalCohort
  attr_reader :name, :p0_start_date, :immersive_start_date, :graduation_date, :number_of_students
  attr_accessor :students, :emails
  def initialize(student_list, name, p0_start_date, immersive_start_date, graduation_date)
    @students = student_list
    @name = name
    @p0_start_date = p0_start_date
    @immersive_start_date = immersive_start_date
    @graduation_date = graduation_date
    @number_of_students = @students.length
    @emails = []
    for student in @students
      @emails.push(student.email)
    end
  end

  def currently_in_phase
    days_in_course = Date.today - p0_start_date
    days_in_course.to_i
    case days_in_course
      when days_in_course < 0 then "Course has not started."
      when 0...63 then "Phase 0"
      when 63...85 then "Phase 1"
      when 85...106 then "Phase 2"
      when 106...127 then "Phase 3"
      else "Graduated"
    end
  end

  def graduated
    Date.today >= graduation_date ? true : false
  end

  def add_student(student)
    @students.push(student)
  end

  def remove_student(student_name)
    @students.delete_if {|student| student.name === student_name}
  end

  def print_students
    @students.each{|student| puts student.name}
  end
end

class LocalCohort < GlobalCohort
  attr_reader :location
  def initialize(student_list, name, p0_start_date, immersive_start_date, graduation_date,location)
    super(student_list, name, p0_start_date, immersive_start_date, graduation_date)
    @location = location
  end
end

# TESTS

tori = Student.new("Tori", "tori@email.com", "Chicago")
matt = Student.new("Matt", "matt@email.com", "Chicago")
ryan = Student.new("Ryan", "ryan@email.com", "Chicago")
rocky = Student.new("Rocky", "rocky@email.com", "Chicago")
kevin = Student.new("Kevin", "kevin@email.com", "Chicago")

# lynette = Student.new("Lynette", "lynette@email.com", "New York")
# gillian = Student.new("Gillian", "gillian@email.com", "New York")
# peter = Student.new("Peter", "peter@email.com", "New York")

# ryan = Student.new("Ryan", "ryan@email.com", "San Francisco")
# george = Student.new("George", "george@email.com", "San Francisco")
# simone = Student.new("Simone", "simone@email.com", "San Francisco")
# rachel = Student.new("Rachel", "rachel@email.com", "San Francisco")

cohort = [tori, matt, ryan, rocky, kevin]

sealions = LocalCohort.new(cohort, "Sea Lions", Date.new(2015,12,28), Date.new(2016,2,29), Date.new(2016,5,6),"Chicago")

puts sealions.name
puts sealions.p0_start_date
puts sealions.location
puts sealions.currently_in_phase
puts sealions.graduated
puts sealions.students
puts sealions.emails
puts sealions.immersive_start_date
puts sealions.graduation_date

sealions.print_students
sealions.remove_student("Matt")
sealions.add_student(Student.new("Marti", "marti@email.com", "Chicago"))
sealions.print_students

# Reflect


# What concepts did you review or learn in this challenge?
#  I learned so much about inheritance and how you structure classes to make inheritance work. I also learned about the syntax used for inheritance.
# What is still confusing to you about Ruby?
#  Nothing, Ruby is great!
# What are you going to study to get more prepared for Phase 1?
#  Honestly, the best thing I can do right now is get my social life and logistics for the next 10 weeks organized. That will allow me to fully concentrate on Phase 1.
