class ExerciseSelector
	prepend SimpleCommand

	def initialize(options)
		@options = options
	end

	def call
		selected_ids = []
		options.each do |exercise_muscle_focus, number|
			selected_ids << Exercise.send(:exercise_muscle_focus).order("RANDOM()").limit(number)
		end
	end
end


workout_options = {
  biceps_any: ,
  inner_biceps: ,
  outer_biceps: 
}
  # },
  # triceps: {
  #     long_head:
  #     medial_head:
  #     outer_head:
  #     overall:
  #     any:
  # },
  # shoulders: {
  #   front: ,
  #   rear: ,
  #   middle: ,
  #   overall: ,
  #   any:
  # },
  # chest: {
  #   upper: ,
  #   lower: ,
  #   inner: ,
  #   overall: ,
  #   any: 
  # },
  # back: {
  #   traps:
  #   upper_back:
  #   lats:,
  #   overall: ,
  #   any: 
  # },
  # legs: {
  #   calves:
  #   quads_outers:
  #   quads_inner:
  #   glutes:
  #   overall: 
  #   any: 
  # },
}