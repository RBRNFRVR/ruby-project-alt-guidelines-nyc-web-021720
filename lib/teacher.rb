class Teacher < ActiveRecord::Base 
    has_many :courses
    has_many :students, through: :courses

    def self.teacher_search(name)
     Teacher.all.select{|teacher| teacher.name == name}[0].name 
    end 

    


end 