require_relative 'person'

class Bank
  def initialize(name, current_cash = 0)
    @name = name
    @current_cash = current_cash
    string_output
  end

  def name
    @name
  end

  def string_output
    "#{@name} has been created."
  end

  def current_cash
    @current_cash
  end

  def open_account(person)
    person.bank_accounts[@name] = 0
    "An account has been opened for #{person.name} with #{@name}."
  end

  def deposit(person, amount)
    person.cash_on_hand -= amount
    person.bank_accounts[@name] += amount
    @current_cash += amount
  end

end
