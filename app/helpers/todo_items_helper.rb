module TodoItemsHelper
=begin
	
	def giving_time(completed, created)
		completed = @todo_item.completed_at
		created_time = @todo_item.created_at
		diff_hours = ((complete_time - created_time) / 1.hour).round
		@hours = TimeDifference.between(complete_time, created_time).in_hours.to_i 
		@minutes = TimeDifference.between(complete_time, created_time).in_minutes.to_i 
		@seconds = TimeDifference.between(complete_time, created_time).in_seconds.to_i.round 
		@spent_time = [@hours, @minutes, @seconds].join(':')	
	end

=end
end
