class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => {email: true, login: false}


  def random_student
    @students = Student.all
    test_array = []
    test_array = @students.ids

    r1 = test_array.sample
    test_array.delete(r1)

    r2 = test_array.sample
    test_array.delete(r2)

    puts "The first pairs are #{r1} and #{r2}"
    puts "*" * 50


    puts test_array


  end

end
