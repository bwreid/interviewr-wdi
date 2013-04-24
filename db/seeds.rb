Choice.delete_all
Question.delete_all
Response.delete_all
Run.delete_all
Tag.delete_all
Exam.delete_all
User.delete_all

#users-- we each now have a user that can log in at successfully take tests
admin = User.create(email: 'admin@gmail.com', is_house: true, password: 'a', password_confirmation: 'a',:phone=>'12345678910')
u1 = User.create(first: 'Jane', last: 'Sternbach', email:"janesternbach+1@gmail.com", password: 'a', password_confirmation: 'a', phone:"+16463275054")
u3 = User.create(:first=>'Brian',:last=>'Yingling',:email=>'byingling@gmail.com',:password=>'a',:password_confirmation=>'a', :phone => "+18622230085")
u4 = User.create(first:"Sean", last:"Marzug-McCarthy", email:"samdec11@gmail.com", phone:"+13156574130", password:"a", password_confirmation:"a")
u5 = User.create(first:"Shefali", last:"Friesen", email:"musictechgirl@gmail.com", phone:"+19177433254", password:"a", password_confirmation:"a")
u6 = User.create(first:"Bryan", last:"Reid", email:"holla@bryanwreid.com", phone:"+16507593446", password:"a", password_confirmation:"a")
u6 = User.create(first:"Jeffrey", last:"Katz", email:"jeffreyerickatz@gmail.com", phone:"+12154997415", password:"a", password_confirmation:"a")

<<<<<<< HEAD
#exams
e1 = Exam.create(:name => "Ruby Basics", :fee => true, :cost=>5.00, :pass_rate => "85", :creator_id => u1.id)
e2 = Exam.create(:name => "Computer Science", :fee => true,:cost=>3.00, :pass_rate => "40", :creator_id => u1.id)
=======
e1 = Exam.create(:name => "Ruby Basics", :fee => true, :cost=>5.00, :pass_rate => "85", :creator_id=>u1.id)
e2 = Exam.create(:name => "Computer Science", :fee => true,:cost=>3.00, :pass_rate => "40", :creator_id=>u1.id)
e3 = Exam.create(:name => "Python", :fee => true, :cost=>5.00, :pass_rate => "30", :creator_id=>u1.id)
e4 = Exam.create(:name => "Matlab", :fee => true, :cost=>10.00, :pass_rate => "15", :creator_id=>u1.id)
e5 = Exam.create(:name => "CSS", :fee => false, :pass_rate => "80",:creator_id=>u1.id)

# e1.user << u1
# e2.user << u1
# e3.user << u1
# e4.user << u1
# e4.user << u1

>>>>>>> 208164b0af844abb66bcf4507f4b92b9264c4ed9

# exam 1
q1 = Question.create(:text => "What is an array used for", :exam_id => e1.id)
q2 = Question.create(:text => "How can you find out if an array is empty?", :exam_id => e1.id)
# exam 2
q3 = Question.create(:text => "What is a binary tree?", :exam_id => e2.id)
q4 = Question.create(:text => "What is fizzbuzz?", :exam_id => e2.id)


# exam1, question 1
c1 = Choice.create(:text => "It is used to put out fires.", :correct => false, :question_id => q1.id)
c2 = Choice.create(:text => "An array is used for storing objects in an ordered list.", :correct => true, :question_id => q1.id)
c3 = Choice.create(:text => "It is used to increase peace in the world.", :correct => false, :question_id => q1.id)
c4 = Choice.create(:text => "It is used to organize data.", :correct => true, :question_id => q1.id)

#exam1, question 2
c5 = Choice.create(:text => "Ask it very nicely.", :correct => false, :question_id => q2.id)
c6 = Choice.create(:text => "Use .empty at the end of it", :correct => true, :question_id => q2.id)
c7 = Choice.create(:text => "Use the .isempty? at the end of it", :correct => false, :question_id => q2.id)
c8 = Choice.create(:text => "Tell the array it looks very nice today", :correct => false, :question_id => q2.id)

#exam2, question 1
c9 = Choice.create(:text => "It is a tree that grows 2 dollar bills", :correct => false, :question_id => q3.id)
c10 = Choice.create(:text => "A tree that has two paths", :correct => true, :question_id => q3.id)
c11 = Choice.create(:text => "It has a search that equals O(n) is worst case, and Ologn is the best case", :correct => true, :question_id => q3.id)
c12 = Choice.create(:text => "It is a tree made of booleans", :correct => true, :question_id => q3.id)

#exam2, question 2
c13 = Choice.create(:text => "Fizzbuzz is the world's greatest haircut", :correct => false, :question_id => q4.id)
c14 = Choice.create(:text => "A common question used to test basic program writing skills", :correct => true, :question_id => q4.id)
c15 = Choice.create(:text => "A new kind of drink", :correct => false, :question_id => q4.id)
c16 = Choice.create(:text => "A test that uses arrays and %", :correct => true, :question_id => q4.id)

#tags
t1 = Tag.create(:name => "Ruby")
t2 = Tag.create(:name => "Basics")
t3 = Tag.create(:name => "CS")
t4 = Tag.create(:name => "NYC")
t5 = Tag.create(:name => "General Assembly")


