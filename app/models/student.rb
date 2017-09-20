class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => {email: true, login: false}

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

  # print out the pair
  pair.length.times do |i|
    week = pair[i]
    week.length.times do |x|
      student = week[x]
      puts "Pair " + (x+1).to_s + " " + student[0] + " & " + student[1]
    end
       puts " " * 20
  end
  pair

end

end
