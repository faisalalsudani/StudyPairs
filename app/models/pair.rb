class Pair < ApplicationRecord
  # validates :matches, uniqueness: true
  validates :day, uniqueness: true

  $student_array = Hash.new {|h,k| h[k] = Array.new}

  def self.r_student

    @students = Student.all.where.not(admin: true)
    student_names = []
    test_iteration = []

    @students.each do |student|
      student_names.push(student.username)
    end

    pair = (1...student_names.size).map do |r|
      t=student_names.dup
      (0...(student_names.size/2)).map do |_|
        [t.shift, t.delete_at( - ( r % t.size + (r >= t.size * 2 ? 1 : 0) ) )]
      end
    end


      pair.sample

  end
end
