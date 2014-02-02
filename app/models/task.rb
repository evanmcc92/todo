class Task < ActiveRecord::Base
  belongs_to :user

  validate :title, presence: true, length: {maximum: 255}
  validate :description,  length: {maximum: 2500}

end
