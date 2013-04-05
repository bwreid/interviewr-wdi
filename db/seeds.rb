Choice.delete_all
Question.delete_all
Response.delete_all
Run.delete_all
Tag.delete_all
Exam.delete_all
User.delete_all

# User :address, :balance, :email, :first, :image, :is_admin, :last, :lat, :lon, :occupation, :password, :password_digest, :phone

User.create(email: 'admin@gmail.com', is_house: true, password: 'a', password_confirmation: 'a')
u1 = User.create(first: 'Bob', last: 'Bobberson', password: 'a', password_confirmation: 'a', email: 'bob@gmail.com')