class Person

  attr_accessor :bank_accounts

  def initialize(name, cash_on_hand = 0)
    @name = name
    @cash_on_hand = cash_on_hand
    @bank_accounts = {}
    string_output
  end

  def name
    @name
  end

  def cash_on_hand
    @cash_on_hand
  end

  def string_output
    puts "#{@name} has been created with #{@cash_on_hand} galleons in cash."
  end



end
