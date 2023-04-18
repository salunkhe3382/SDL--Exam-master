# Set up SMTP settings
require 'mail'
Mail.defaults do
  delivery_method :smtp, {
    :address => 'smtp.gmail.com',
    :port => 587,
    :user_name => 'salunkhe3382@gmail.com',
    :password => 'jzkbfxelcxtwumjz
',
    :authentication => :login,
    :enable_starttls_auto => true
  }
end
 
# Define email message
message = Mail.new do
  from     'salunkhe3382@gmail.com'
  to       'salunkhe3382@gmail.com'
  subject  'Hello from Ruby!'
  body     'This is a test email sent from Ruby.'
end
 
# Send email
message.deliver!