require_relative('./person')

class Student < Person
  attr_reader :classroom

  def initialize(*args, classroom: 'Unknown', **kwargs)
    super(*args, **kwargs)
    @classroom = classroom
  end

  def classroom=(classroom)
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
