class Pair < ApplicationRecord
  # validates :matches, uniqueness: true
  validates :day, uniqueness: { :message => "There is already pairs for this day!"}

  $student_array = Hash.new {|h,k| h[k] = Array.new}
  $test_iteration = []

  def self.r_student

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

    if $test_iteration.length == (@students.length - 1)
      puts $test_iteration
      $test_iteration.clear
    end

    while true
      @x = pair.sample
      if $test_iteration.include?(@x)
        next
      else
        $test_iteration.push(@x)
        break
      end
    end

    @x



  end
end
