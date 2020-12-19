class AlarmMailer < ApplicationMailer
  default from: 'noreply@example.com'

  def alarm_mail
    binding.pry 
  
    default to: -> { User.pluck(:email) }
    mail(subject: "anchorlink通知")
  end

  def alarm_mail_at9
    @user = User.pluck(:email)
    Participant.where(alarm: '9:00')
    mail(
      to:   @user,
      subject: 'anchorlink通知'
    )
  end

  def alarm_mail_at10
    @user = User.pluck(:email)
    Participant.where(alarm: '10:00')
    mail(
      to:   @user,
      subject: 'anchorlink通知'
    )
  end

end
