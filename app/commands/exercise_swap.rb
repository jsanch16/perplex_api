class ExerciseSwap
  prepend SimpleCommand

  def initialize(selection_type)
    @selection_type = selection_type
  end
    
  def call
    Exercise.send(@selection_type.to_sym).order("RANDOM()").limit(1).pluck(:id)
  end
end