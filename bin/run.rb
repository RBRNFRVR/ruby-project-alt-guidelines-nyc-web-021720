require_relative '../config/environment'
require_relative '../lib/teacher'
 require_relative '../lib/student'
require_relative '../lib/course'

puts "Welcome to My Hero Academia's Library!"
puts "Please Choose Directory(Integer)"
puts "1)Student Database"
puts "2)Teacher Database"
input = gets.chomp

if input == "1" 
    puts "Choose Branch(Letter)"
    puts "A) Find Student"
    puts "B) Add Student"
    puts "C) Change Nickname"
    puts "D) Delete Student"
    puts "E) List Students"
    input = gets.chomp.capitalize

    if input == "A"
            puts "What is the name?"
            input = gets.chomp
            student_lookup = Student.student_search(input)
        puts "The name is #{student_lookup.name}"
        puts "The quirk is #{student_lookup.quirk}"
        puts "The temperment is #{student_lookup.temperment}"
        puts "The nickname is #{student_lookup.nickname}"

    elsif input == "B"
            puts "Please enter info as shown (Name, Quirk, Temperment, Nickname)"
            input = gets.chomp
            split_string = input.split(", ")
            name = split_string[0]
            quirk = split_string[1]
            temperment = split_string[2]
            nickname = split_string[3]
            Student.add_student(name, quirk, temperment, nickname)
            puts "#{name} has been added!"

    elsif input == "C"
        puts "Please enter student name"
        input = gets.chomp
        Student.change_nickname(input)
        puts "Nickname has been changed!"

    elsif input == "D"
        puts "Type which student you would like to delete?"
        input = gets.chomp
        Student.delete_student(input)
        puts "The student has been expelled! Oh No!"
    elsif input == "E"
        Student.all.each do |student|
            puts "NAME= #{student.name}"
            puts "QUIRK= #{student.quirk}"
            puts "TEMPERMENT= #{student.temperment}"
            puts "NICKNAME= #{student.nickname}"
            puts "_____________________________"
        end

    end

elsif input == "2"
    puts "Choose Branch(Letter)"
    puts "A) Find Teacher"
    puts "B) Add Teacher"
    puts "C) Change Nickname"
    puts "D) Delete Teacher"
    puts "E) List Teachers"
    input = gets.chomp.capitalize

    if input == "A"
        puts "What is the name?"
        input = gets.chomp
        teacher_lookup = Teacher.teacher_search(input)
        puts "The name is #{teacher_lookup.name}"
        puts "The quirk is #{teacher_lookup.quirk}"
        puts "The ranking is #{teacher_lookup.ranking}"
        puts "The nickname is #{teacher_lookup.nickname}"

    elsif input == "B"
        puts "Please enter info as shown Name, Quirk, Ranking(integer), Nickname"
        input = gets.chomp
        split_string = input.split(", ")
        name = split_string[0]
        quirk = split_string[1]
        ranking = split_string[2]
        nickname = split_string[3]
        Teacher.add_teacher(name, quirk, ranking, nickname)
        puts "#{name} has been added!"

    elsif input == "C"
        puts "Please enter teacher name"
        input = gets.chomp
        Teacher.change_nickname(input)
        puts "Nickname Changed!"

    elsif input == "D"
        puts "Type which teacher you would like to delete?"
        input = gets.chomp
        Teacher.delete_hero(input)
        puts "The Hero has been retired(So Long Old Friend)"
        
    elsif input == "E"
        Teacher.all.each do |teacher|
            puts "NAME= #{teacher.name}"
            puts "QUIRK= #{teacher.quirk}"
            puts "RANKING= #{teacher.ranking}"
            puts "NICKNAME= #{teacher.nickname}"
            puts "_____________________________"
        end
    
    end
end








