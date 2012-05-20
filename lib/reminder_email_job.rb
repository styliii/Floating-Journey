class ReminderEmailJob
  def perform
    ReminderMailer.reminder_email(@user).deliver
  end
end