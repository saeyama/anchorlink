class AlarmMailer < ApplicationMailer
  default from: 'noreply@example.com'

  def alarm_mail
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "11:00" )
    end

    users_notices_alarms_mails = users_notices_alarms.pluck(:email)

    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

  
  # def alarm_mail
  #   @user = User.pluck(:email)
  #   Participant.where(alarm: '9:00')
  #   mail(
  #     bcc:   @user,
  #     subject: 'anchorlink通知'
  #   )
  # end

  # def alarm_mail_at9
  #   @user = User.pluck(:email)
  #   Participant.where(alarm: '9:00')
  #   mail(
  #     to:   @user,
  #     subject: 'anchorlink通知'
  #   )
  # end

  # def alarm_mail_at10
  #   @user = User.pluck(:email)
  #   Participant.where(alarm: '10:00')
  #   mail(
  #     to:   @user,
  #     subject: 'anchorlink通知'
  #   )
  # end

end
