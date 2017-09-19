class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => {email: true, login: false}


  def random_student
    @students = Student.all

    studentes_names = []
    studentes_names = @students
    total_students = @students.length
    i = 1

      while i <= total_students
        r1 = studentes_names.sample.username
        r2 = studentes_names.sample.username

        if r1 != r2
          pairs =  r1 + " " + r2
          pairs.uniq
        end

        puts "#" * 40
        i+= 1
      end
    end

end
