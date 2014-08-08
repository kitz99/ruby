load "ContactInfo.rb"
class Person
	include ContactInfo
end

class Teacher
	include ContactInfo
	attr_accessor :lesson
end

class Student < Person
	attr_accessor :books
end