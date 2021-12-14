require_relative('./person')

class Teacher < Person
  def initialize(*args, specialization, **kwargs)
    super(*args, **kwargs)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
