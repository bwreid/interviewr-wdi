Choice.delete_all
Question.delete_all
Response.delete_all
Run.delete_all
Tag.delete_all
Test.delete_all
User.delete_all

# User :address, :balance, :email, :first, :image, :is_admin, :last, :lat, :lon, :occupation, :password, :password_digest, :phone
# Exams :name, :fee, :pass_rate, :creator_id


User.create(email: 'admin@gmail.com', is_house: true, password: 'a', password_confirmation: 'a')
u1 = User.create(first: 'Bob', last: 'Bobberson', password: 'a', password_confirmation: 'a')


e1 = Exam.create(name:"Ruby Basics", fee:false, pass_rate:70, creator_id:u1.id)

q1 = Question.create()