require_relative "../lib/transfer"
class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @amount = transfer_amount
    @status = 'pending'
  end
  
  def valid?
    if sender.valid? && receiver.valid?
      return true 
    else 
      return false 
    end
  end
  
  def execute_transaction
    sender.withdraw(@amount)
    receiver.deposit(@amount)
    @status = "complete"
    
  end
  
end
