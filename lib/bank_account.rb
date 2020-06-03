class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  def initialize(name, balance = 1000, status)
    @name = name
    @balance = balance
    @status = "open"
  end
  
  def deposit(mullah)
    @balance += mullah
  end
  
  def display_balance 
    "Your balance is $#{@balance}."
  end
  
  def valid?
    @status == "open" && @balance > 0
  end
  
  def close_account
    @status = "closed"
  end
end
