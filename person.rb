require_relative('./corrector')

class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
  end

  attr_accessor :name, :age
  attr_reader :id

  def can_use_services?
    @age > 18 || @parent_permission == true
  end

  def validate_name
    @corrector
  end

  private

  def of_age?
    @age > 18
  end
end
