class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
      if roster[grade]
        roster[grade].push(student_name)
      else
        roster[grade] = []
        roster[grade].push(student_name)
      end
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    hash = {}
    roster.map { |g,s| hash[g] = s.sort }
    return hash
  end
end