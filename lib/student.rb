class Student < ActiveRecord::Base 
    has_many :courses, :dependent=> :delete_all
    has_many :teachers, through: :courses 

    def self.student_search(name)
        self.all.select{|student| student.name.downcase == name.downcase || student.nickname.downcase == name.downcase}[0]
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
           puts "what is new nickname?"
           input = gets.chomp
           student.nickname = input 
           student.save
       end
    
end 