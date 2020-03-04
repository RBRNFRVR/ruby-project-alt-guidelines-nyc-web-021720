class Teacher < ActiveRecord::Base 
    has_many :courses
    has_many :students, through: :courses

    def self.teacher_search(name)
     self.all.select{|teacher| teacher.name == name || teacher.nickname == name}[0]
    end 
    # def self.find_by_hero(input)
    #     self.all.find_by(nickname: input)
    # end
    def self.delete_hero(input)
        teacher_name = self.teacher_search(input)
        teacher_name.destroy
    end
    


end 