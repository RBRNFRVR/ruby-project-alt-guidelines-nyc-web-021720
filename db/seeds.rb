require_relative '../lib/teacher.rb'
require_relative '../lib/student.rb'
Teacher.destroy_all
Student.destroy_all
Course.destroy_all

toshinori_yagi = Teacher.create(name: "Toshinori Yagi", quirk: "One For All", ranking: 1,nickname: "All Might")
shota_aizawa = Teacher.create(name: "Shota Aizawa", quirk: "Erasure", ranking: 2,nickname: "Eraser Head")
hizashi_yamada = Teacher.create(name: "Hizashi Yamada", quirk: "Voice", ranking: 5,nickname: "Voice Hero: Present Mic")
sekijiro_kan = Teacher.create(name: "Sekijiro Kan", quirk: "Blood Control", ranking: 4,nickname: "Vlad King")
nemuri_kayama = Teacher.create(name: "Nemuri Kayama", quirk: "Somnambulist", ranking: 3,nickname: "Midnight")

izuku_midoriya = Student.create(name: "Izuku Midoriya", quirk: "One For All", temperment: "Strategic",nickname: "Deku")
bakugo_katsuki = Student.create(name: "Bakugo Katsuki", quirk: "Explosion", temperment: "Aggresive",nickname: "Kacchan")
shoto_todoroki = Student.create(name: "Shoto Todoroki", quirk: "Fire and Ice", temperment: "Sullen",nickname: "Shoto")
minoru_mineta = Student.create(name: "Minoru Mineta", quirk: "Pop Off", temperment: "Perverted",nickname: "Fresh-Picked Hero: Grape Juice")
yuga_aoyama = Student.create(name: "Yuga Aoyama", quirk: "Navel Lazer", temperment: "Egotistical",nickname: "Shining Hero: Can't Stop Twinkling")

course_a = Course.create(student: izuku_midoriya, teacher: toshinori_yagi)
course_b = Course.create(student: bakugo_katsuki, teacher: shota_aizawa)



