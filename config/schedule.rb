# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"

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

every 1.days, at: '9:00 am' do
# every 1.minutes do
  runner 'AlarmMailer.alarm_mail.deliver_now'
end

every 1.days, at: '10:00 am' do
  # every 1.minutes do
    runner 'AlarmMailer.alarm_mail_at10'
  end

# Learn more: http://github.com/javan/whenever
