require 'date'

class Rental
  attr_accessor :date

  def initialize(person, book, date = DateTime.now())
    @date = date

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end
end
