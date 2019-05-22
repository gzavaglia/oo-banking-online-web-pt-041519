class Transfer
  attr_accessor :sender, :receiver, :status, :transfer_amount
  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @transfer_amount = transfer_amount
    @status = 'open'
  end
end
