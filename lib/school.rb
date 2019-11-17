class School

  attr_accessor :roster

  def initialize( school )
    @school = school
    @roster = {}
  end

  def add_student( student_name, student_grade )
    if roster[student_grade] == nil
      roster[student_grade] = [student_name]
    else
      roster[student_grade].push( student_name)
    end
  end

  def grade( grade )
    roster[grade]
  end

  def sort
    roster.each { |grade, name_list| name_list.sort! }
  end


end
