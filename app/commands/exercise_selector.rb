class ExerciseSelector
	prepend SimpleCommand

	def initialize(selections)
		@selections = selections
	end

	def call
		selected_ids = []
		@selections.each do |selection_type, count|
			selected_ids += Exercise.send(selection_type.to_sym).order("RANDOM()").limit(count).ids.collect{|id| {selection_type: selection_type, exercise_id: id}}
		end
    selected_ids
	end
end


# workout_options = {
#   biceps_any: ,
#   inner_biceps: ,
#   outer_biceps: ,
#   biceps_overall: ,
#
# }
