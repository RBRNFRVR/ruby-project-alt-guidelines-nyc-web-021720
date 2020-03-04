require_relative '../config/environment'
require_relative '../lib/teacher'
 require_relative '../lib/student'
require_relative '../lib/course'

puts "Welcome to My Hero Academia's Library!"
puts "1)Student Database"
puts "2)Teacher Database"
input = gets.chomp
if input == "1" 
    puts "A) Find Student"
    puts "B) Add Student"
    puts "C) Change Nickname"
    puts "D) Delete Student"
    input = gets.chomp
    if input == "A"
            puts "What is the name?"
                  
    elsif input == "B"
            puts "Please enter info as shown (Name, Quirk, Temperment, Nickname)"
    elsif input == "C"
        puts "Please enter student name"
    elsif input == "D"
    end
elsif input == "2"
    puts "A) Find Teacher"
    puts "B) Add Teacher"
    puts "C) Change Nickname"
    puts "D) Delete Teacher"
    input = gets.chomp
    if input == "A"
    elsif input == "B"
    elsif input == "C"
    elsif input == "D"
    end
end








