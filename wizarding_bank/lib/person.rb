class Person

  attr_reader :name
  attr_accessor :bank_accounts, :cash_on_hand

  def initialize(name, cash_on_hand = 0)
    @name = name
    @cash_on_hand = cash_on_hand
    @bank_accounts = {}
    string_output
  end

  def string_output
    puts "#{@name} has been created with #{@cash_on_hand} galleons in cash."
  end

end
