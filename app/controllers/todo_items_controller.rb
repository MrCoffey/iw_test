class TodoItemsController < ApplicationController
	before_action :set_todo_list
	before_action :set_todo_items, except: [:create]

	def create
		@todo_item = @todo_list.todo_items.create(todo_items_params)
		redirect_to @todo_list, notice: "New item created!"
	end

	def destroy
		if @todo_item.destroy
			#Forma corta
			redirect_to @todo_list, notice: "Item deleted"
		else
			#Forma larga
			redirect_to @todo_list
			flash[:error] = "Whoops we have a truoble"
		end		
	end

	def complete
		@todo_item.update_attribute(:completed_at, Time.now)
		redirect_to @todo_list, notice: "Item completed !"
	end

	private

	def todo_items_params
		params[:todo_item].permit(:title)
	end

	def set_todo_list
		@todo_list = TodoList.find(params[:todo_list_id])
	end

	def set_todo_items
		@todo_item = @todo_list.todo_items.find(params[:id])
	end
end
