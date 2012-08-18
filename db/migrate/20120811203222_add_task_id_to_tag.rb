class AddTaskIdToTag < ActiveRecord::Migration
  def change
    add_column :tags, :task_id, :integer
  end
end
