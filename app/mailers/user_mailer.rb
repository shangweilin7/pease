class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify_comment.subject
  #
  default :from => 'Shang-Wei <she3354248@gmail.com>'

  def notify_comment(email, comment)
    @comment = comment
    mail(:to => email, :subject => 'New Comment')
  end
end
