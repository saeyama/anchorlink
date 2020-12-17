class AlarmMailer < ApplicationMailer
  default from: 'noreply@example.com'

  def alarm_mail(user)
    @participant = user
    mail(
      from: 'from@example.com',
      to:   @participant.notice,
      subject: 'お問い合わせ通知'
    )
  end

end
