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
      
    elsif !@sender.valid?
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    else
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    end
  end
end
