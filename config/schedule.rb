every :hour do
  runner "Task.check_due"
  runner "Task.check_reminder"
end 