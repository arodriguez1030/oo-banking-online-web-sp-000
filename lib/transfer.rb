require "pry"

class Transfer
  attr_accessor :bank_account, :sender, :receiver, :status, :amount, :valid
  
  def initialize(sender, receiver, amount)
    @sender =sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end
  
def execute_transaction
  if self.sender.balance < self.amount || !sender.valid?
    "Transaction rejected. Please check your account balance."
 elsif self.sender.balance > self.amount && @status == "pending"
  self.sender.balance -= self.amount
  self.receiver.balance += self.amount
  @status = "complete" 
  end
    end
end
