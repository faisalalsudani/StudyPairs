class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => {email: true, login: false}


   has_many :pairs
   validates :pairs, uniqueness: true


 $student_array = Hash.new {|h,k| h[k] = Array.new}

def r_student

  @students = Student.all.where.not(admin: true)
  student_names = []

  @students.each do |student|
    student_names.push(student.username)
  end

  pair = (1...student_names.size).map do |r|
    t=student_names.dup
    (0...(student_names.size/2)).map do |_|
      [t.shift, t.delete_at( - ( r % t.size + (r >= t.size * 2 ? 1 : 0) ) )]
    end
  end

   return pair.sample

end

end
