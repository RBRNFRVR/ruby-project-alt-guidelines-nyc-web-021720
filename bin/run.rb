require_relative '../config/environment'
require_relative '../lib/teacher'
 require_relative '../lib/student'
require_relative '../lib/course'

puts "Welcome to My Hero Academia's Library!"
puts "Please enter a students name"
input = gets.chomp  

Student.change_nickname(input)
Student.all 








