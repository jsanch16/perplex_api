class ExerciseSelector
	prepend SimpleCommand

	def initialize(options)
		@options = options
	end

	def call
		selected_ids = []
		@options.each do |selection_type, count|
			selected_ids += Exercise.send(selection_type.to_sym).order("RANDOM()").limit(count).ids
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
