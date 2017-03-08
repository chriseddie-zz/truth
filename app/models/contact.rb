class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => false

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Truth Drums Website Contact",
      :to => "hello@chriseddie.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
