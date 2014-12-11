class AddTotalTimeToTodoItems < ActiveRecord::Migration
  def change
    add_column :todo_items, :total_time, :time
  end
end
