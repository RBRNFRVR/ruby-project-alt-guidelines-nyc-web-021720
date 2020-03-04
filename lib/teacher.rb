class Teacher < ActiveRecord::Base 
    has_many :courses
    has_many :students, through: :courses

    def self.teacher_search(name)
     self.all.select{|teacher| teacher.name == name || teacher.nickname == name}[0]
    end 
    
    def self.delete_hero(input)
        teacher_name = self.teacher_search(input)
        teacher_name.destroy
    end

    def self.add_teacher(name, quirk, ranking, nickname)
        self.create(name: name, quirk: quirk, ranking: ranking, nickname: nickname)  
    end
    def self.change_nickname(name)
        teacher = self.teacher_search(name)
        puts "Please enter new Nickname"
        input = gets.chomp
        teacher.nickname = input 
        teacher.save
    end
    



end 