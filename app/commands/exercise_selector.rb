class ExerciseSelector
	prepend SimpleCommand

	def initialize(options)
		@options = options
	end

	def call
		selected_ids = []
		@options.each do |muscle, count|
			selected_ids += Exercise.send(muscle.to_sym).order("RANDOM()").limit(count).ids
		end
    selected_ids
	end
end


# workout_options = {
#   biceps_any: ,
#   inner_biceps: ,
#   outer_biceps: 
# }
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