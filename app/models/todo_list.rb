class TodoList < ActiveRecord::Base
	#that the existence of tasks is dependent on the existence of the todo lists
	has_many :todo_items, dependent: :destroy

end
