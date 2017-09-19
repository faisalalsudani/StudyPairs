class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => {email: true, login: false}

   def random_student
     @students = Student.all
     test_array = []
     pairs = []
     test_array = @students.ids

     total_students = @students.length

     puts total_students
     i = 1

       while i <= total_students
         r1 = test_array.sample
         test_array.delete(r1)

         r2 = test_array.sample
         test_array.delete(r2)


         p1 = @students.select {|s| s["id"] == r1 }
         p2 = @students.select {|s| s["id"] == r2 }

         student1 =  p1.map { |hash| hash['username'] }
         student2 =  p2.map { |hash| hash['username'] }

         pairs = student1 + student2

         puts pairs 
         puts "*" * 20
         i+= 2
       end
    end

end
