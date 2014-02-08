class Task < ActiveRecord::Base
  belongs_to :user

  validate :title, presence: true, length: {maximum: 255}
  validate :description,  length: {maximum: 2500}

  def self.check_reminder
    current_date = Time.now.strftime("%d/%m/%Y %H:%M").to_s
    self.where(:reminder == current_date).each do |task|
      ModelMailer.task_reminder(task).deliver
  	end
  end

  def self.check_due
    current_date = Time.now.strftime("%d/%m/%Y %H:%M").to_s
    self.where(:due == current_date).each do |task|
      ModelMailer.task_due(task).deliver
    end
  end 

end
