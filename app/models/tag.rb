class Tag < ActiveRecord::Base
  attr_accessible :name, :task_id

  belongs_to :task

  #has_and_belongs_to_many :tasks
end
