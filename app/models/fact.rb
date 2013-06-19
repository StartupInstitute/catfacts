class Fact < ActiveRecord::Base
  attr_accessible :body

  def deliver(phone)
    client = Twilio::REST::Client.new ENV['TWILIO_KEY'], ENV['TWILIO_TOKEN']
    client.account.sms.messages.create(
      :from => '+19086722841',
      :to => phone,
      :body => self.body
    )
  end
end
