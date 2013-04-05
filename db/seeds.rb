Choice.delete_all
Question.delete_all
Response.delete_all
Run.delete_all
Tag.delete_all
Exam.delete_all
User.delete_all

# User :address, :balance, :email, :first, :image, :is_admin, :last, :lat, :lon, :occupation, :password, :password_digest, :phone
# Exams :name, :fee, :pass_rate, :creator_id
# Question :text


User.create(email: 'admin@gmail.com', is_house: true, password: 'a', password_confirmation: 'a')
u1 = User.create(first: 'Bob', last: 'Bobberson', password: 'a', password_confirmation: 'a', address: '10 E 21st St, New York, NY', email: 'bob@gmail.com')


e1 = Exam.create(name:"Ruby Basics", fee:false, pass_rate:70, creator_id:u1.id)

q1 = Question.create(text:"What?")
q2 = Question.create(text:"What?")
q3 = Question.create(text:"What?")
q4 = Question.create(text:"What?")

e1.questions << q1 << q2 << q3 << q4

q1.choices << c1 = Choice.create(text:"A")
q1.choices << c2 = Choice.create(text:"B")
q1.choices << c3 = Choice.create(text:"C")
q1.choices << c4 = Choice.create(text:"D")
q2.choices << c5 = Choice.create(text:"A")
q2.choices << c6 = Choice.create(text:"B")
q2.choices << c7 = Choice.create(text:"C")
q2.choices << c8 = Choice.create(text:"D")
q3.choices << c9 = Choice.create(text:"A")
q3.choices << c10 = Choice.create(text:"B")
q3.choices << c11 = Choice.create(text:"C")
q3.choices << c12 = Choice.create(text:"D")
q4.choices << c13 = Choice.create(text:"A")
q4.choices << c14 = Choice.create(text:"B")
q4.choices << c15 = Choice.create(text:"C")
q4.choices << c16 = Choice.create(text:"D")


