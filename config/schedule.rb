# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron


# Example:

# 絶対パスから相対パス指定
env :PATH, ENV['PATH']

# 出力先のログファイルの指定
set :output, 'log/crontab.log'
# ジョブの実行環境の指定
set :environment, :development


# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

#8:00am
every 1.days, at: '11:00 pm' do
  runner 'AlarmMailer.alarm_mail_at8.deliver_now'
end

#9:00am
every 1.days, at: '0:00 am' do
  runner 'AlarmMailer.alarm_mail_at9.deliver_now'
end

#10:00am
every 1.days, at: '1:00 am' do
  runner 'AlarmMailer.alarm_mail_at10.deliver_now'
end

#11:00am
every 1.days, at: '2:00 am' do
  runner 'AlarmMailer.alarm_mail_at11.deliver_now'
end

#0:00pm
every 1.days, at: '3:00 am' do
  # every 1.minutes do
  runner 'AlarmMailer.alarm_mail_at12.deliver_now'
end

#1:00pm
every 1.days, at: '4:00 am' do
  runner 'AlarmMailer.alarm_mail_at13.deliver_now'
end

#2:00pm
every 1.days, at: '5:00 am' do
  runner 'AlarmMailer.alarm_mail_at14.deliver_now'
end

#3:00pm
every 1.days, at: '6:00 am' do
  runner 'AlarmMailer.alarm_mail_at15.deliver_now'
end

#4:00pm
every 1.days, at: '7:00 am' do
  runner 'AlarmMailer.alarm_mail_at16.deliver_now'
end

#5:00pm
every 1.days, at: '8:00 am' do
  runner 'AlarmMailer.alarm_mail_at17.deliver_now'
end

#6:00pm
every 1.days, at: '9:00 am' do
  runner 'AlarmMailer.alarm_mail_at18.deliver_now'
end

#7:00pm
every 1.days, at: '10:00 am' do
  runner 'AlarmMailer.alarm_mail_at19.deliver_now'
end

#8:00pm
every 1.days, at: '11:00 am' do
  runner 'AlarmMailer.alarm_mail_at20.deliver_now'
end

#9:00pm
every 1.days, at: '0:00 pm' do
  runner 'AlarmMailer.alarm_mail_at21.deliver_now'
end

# Learn more: http://github.com/javan/whenever
