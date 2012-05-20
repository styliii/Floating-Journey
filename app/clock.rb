require './config/boot'
require './config/environment'

every(6.hour, 'reminderemail.fetch') { Delayed::Job.enqueue ReminderEmailJob.new }