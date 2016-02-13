require_relative 'person'

class Bank
  def initialize(name)
    @name = name
    string_output
  end

  def name
    @name
  end

  def string_output
    puts "#{@name} has been created."
  end

  def open_account(person)
    
  end

end
