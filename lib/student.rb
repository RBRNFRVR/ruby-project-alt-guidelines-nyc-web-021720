class Student < ActiveRecord::Base 
    has_many :courses 
    has_many :teachers, through: :courses 

    def self.student_search(name)
        self.all.select{|student| student.name == name || student.nickname == name}[0]
       end 
       
       def self.delete_student(input)
           student_name = self.student_search(input)
           student_name.destroy
       end
   
       def self.add_student(name, quirk, temperment, nickname)
           self.create(name: name, quirk: quirk, temperment: temperment, nickname: nickname)  
       end
       def self.change_nickname(name)
           student = self.student_search(name)
           puts "Please enter new Nickname"
           input = gets.chomp
           student.nickname = input 
           student.save
       end
    
end 