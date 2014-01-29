class Task < ActiveRecord::Base
  #attr_accessible :title, :description, :priority, :due, :reminder, :complete
  belongs_to :user

  #default_scope :order => 'task.created_at DESC'
end
