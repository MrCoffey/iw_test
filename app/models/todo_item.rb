class TodoItem < ActiveRecord::Base
	#Listando de menor a mayor
	default_scope { order(created_at: :desc) }	

	belongs_to :todo_list

	def completed?
 		!completed_at.blank?
	end
end
