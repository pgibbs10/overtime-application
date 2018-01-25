class ApplicationMailer < ActionMailer::Base
  default from: 'mailer@fakeemail.com'
  layout 'mailer'
end
