class Course < ActiveRecord::Base 
    belongs_to :student 
    belongs_to :teacher 
    def self.teachers_of_student(student_name)
        student_courses = self.all.select{|courses|courses.student.name == student_name}
        student_courses.collect{|courses| courses.teacher.name}
    end
    
    
    def self.students_of_teacher(teacher_name) 
        teacher_courses = self.all.select{|courses|courses.teacher.name == teacher_name}
        teacher_courses.collect{|courses| courses.student.name}
    end
end 