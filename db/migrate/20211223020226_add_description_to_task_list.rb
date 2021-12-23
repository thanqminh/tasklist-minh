class AddDescriptionToTaskList < ActiveRecord::Migration[5.1]
  def change
    add_column :task_lists, :description, :text
  end
end
