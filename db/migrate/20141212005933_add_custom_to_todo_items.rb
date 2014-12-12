class AddCustomToTodoItems < ActiveRecord::Migration
  def change
    add_column :todo_items, :custom, :boolean
  end
end
