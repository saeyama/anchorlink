class AlarmMailer < ApplicationMailer
  default from: 'noreply@example.com'

  # def alarm_mail
  #   users_notices_alarms = User.all.select do |user|
  #     user.participants.where(notice: 'mail', alarm: "11:00" ).present?
  #   end

  #   users_notices_alarms_mails = users_notices_alarms.pluck(:email)
  #   mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  # end

  #8:00am
  def alarm_mail_at8
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "8:00" ).present?
    end

    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

  #9:00am
  def alarm_mail_at9
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "9:00" ).present?
    end

    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

  #10:00am
  def alarm_mail_at10
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "10:00" ).present?
    end

    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end


  #11:00am
  def alarm_mail_at11
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "11:00" ).present?
    end

    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

  #0:00pm
  def alarm_mail_at12
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "12:00" ).present?
    end
  
    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

  #1:00pm
  def alarm_mail_at13
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "13:00" ).present?
    end
  
    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

  #2:00pm
  def alarm_mail_at14
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "14:00" ).present?
    end
  
    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

  #3:00pm
  def alarm_mail_at15
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "15:00" ).present?
    end
  
    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

  #4:00pm
  def alarm_mail_at16
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "16:00" ).present?
    end
  
    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

  #5:00pm
  def alarm_mail_at17
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "17:00" ).present?
    end
  
    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

  #6:00pm
  def alarm_mail_at18
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "18:00" ).present?
    end
  
    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

  #7:00pm
  def alarm_mail_at19
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "19:00" ).present?
    end
  
    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

  #8:00pm
  def alarm_mail_at20
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "20:00" ).present?
    end
  
    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

  #9:00pm
  def alarm_mail_at21
    users_notices_alarms = User.all.select do |user|
      user.participants.where(notice: 'mail', alarm: "21:00" ).present?
    end
  
    users_notices_alarms_mails = users_notices_alarms.pluck(:email)
    mail(subject: "anchorlinkからのお知らせです！", to: users_notices_alarms_mails)
  end

end
