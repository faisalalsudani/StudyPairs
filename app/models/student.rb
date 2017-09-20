class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => {email: true, login: false}

    $student_array = Hash.new {|h,k| h[k] = Array.new }
  def random_student
           @students = Student.all
           total_students = @students.length
           test_array = []
           pairs = []
           #student_array = Hash.new {|h,k| h[k] = Array.new }
           test_array = @students.ids
           #i = 1


           for i in 0..total_students-1
              for j in i+1..total_students-1
                pairs.push(Student.find_by(id:test_array[i]).username + "|" + Student.find_by(id:test_array[j]).username)
              end
           end

            #  while i < total_students
            #    r1 = test_array.sample
             #
            #     test_array.delete(r1)
            #    r2 = test_array.sample
             #
            #     if $student_array[r1].include?(r2)
            #       next
            #     end
            #     test_array.delete(r2)
            #     $student_array[r1].push(r2)
             #
            #    pairs.push(Student.find_by(id:r1).username)
            #    pairs.push(Student.find_by(id:r2).username)
             #
            #    i+= 2
            #  end
             #puts $student_array
                pairs.first
       end

end
