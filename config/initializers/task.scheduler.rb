require 'rubygems'
require 'rake'
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new

scheduler.cron 'task.due' do
    ModelMailer.task_due(user).deliver
end