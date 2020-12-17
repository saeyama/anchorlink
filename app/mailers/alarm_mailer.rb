class AlarmMailer < ApplicationMailer
  default from: 'noreply@example.com'

  def alarm_mail(user)
    @user = user
    mail(
      from: 'from@example.com',
      to:   @user.email,
      subject: 'お問い合わせ通知'
    )
  end

end
