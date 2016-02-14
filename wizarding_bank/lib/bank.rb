class Bank

  attr_reader :name
  attr_accessor :current_cash

  def initialize(name, current_cash = 0)
    @name = name
    @current_cash = current_cash
    string_output
  end

  def string_output
    "#{@name} has been created."
  end

  def open_account(person)
    person.bank_accounts[@name] = 0
    "An account has been opened for #{person.name} with #{@name}."
  end

  def deposit(person, amount)
    if person.cash_on_hand >= amount
      person.cash_on_hand -= amount
      person.bank_accounts[@name] += amount
      @current_cash += amount
      "#{amount} galleons have been deposited into #{person.name}'s #{@name} account. Balance: #{@current_cash} Cash: #{person.cash_on_hand}"
    else
      "#{person.name} does not have enough cash to perform this deposit"
    end
  end

  def withdrawal(person, amount)
    if person.bank_accounts[@name] >= amount
      person.cash_on_hand += amount
      sub_from_personal_and_bank_account(person, amount)
     "#{person.name} has withdrawn #{amount} galleons. Balance: #{@current_cash}"
    else
      "Insufficient funds."
    end
  end

  def transfer(person, transfer_to, amount)
    if person.bank_accounts[@name] >= amount and person.bank_accounts.has_key?(transfer_to.name)
      person.bank_accounts[transfer_to.name] += amount
      transfer_to.current_cash += amount
      sub_from_personal_and_bank_account(person, amount)
      "#{person.name} has transferred #{amount} galleons from #{@name} to #{transfer_to.name}"
    elsif person.bank_accounts[@name] >= amount
      "#{person.name} does not have an account with #{transfer_to.name}"
    else
      "Insufficient funds."
    end
  end

  private

  def sub_from_personal_and_bank_account(person, amount)
    person.bank_accounts[@name] -= amount
    @current_cash -= amount
  end

end
