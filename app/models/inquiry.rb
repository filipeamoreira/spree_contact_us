class Inquiry < ActiveRecord::Base
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, :presence => true,
                   :length => { :maximum => 50 }
  validates :email, :presence => true,
                    :format => { :with => email_regex }
  validates :message, :presence => true
  
  
  #after_save :deliver_notification_email
  
  
  def deliver_notification_email
    InquiryMailer.deliver_notification(self)
  end
  
  
end
