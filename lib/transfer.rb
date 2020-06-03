class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount, :balance
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
     @sender.valid?
     @receiver.valid?
  end
  
  def execute_transaction
    if @status == "complete"
      puts "Transaction was already excuted"
      
    elsif !valid? || @sender.balance < @amount
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    else
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    end
  end
  
  def reverse_transfer
    @sender.balance += @amount
    @receiver.balance -= @amount
  end
end
