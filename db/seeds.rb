User.create!(email: 'jsanch@somewhere.com', password: "password", password_confirmation: "password")
User.create!(email: 'jim@somewhere.com', password: "password", password_confirmation: "password")

# Muscle groups
biceps = MuscleGroup.find_or_create_by!(name: 'Biceps')
triceps = MuscleGroup.find_or_create_by!(name: 'Triceps')
legs = MuscleGroup.find_or_create_by!(name: 'Legs')
shoulders = MuscleGroup.find_or_create_by!(name: 'Shoulders')
back = MuscleGroup.find_or_create_by!(name: 'Back')
chest = MuscleGroup.find_or_create_by!(name: 'Chest')

# Muscles
inner_biceps = Muscle.find_or_create_by!(name: 'Inner biceps')
outer_biceps = Muscle.find_or_create_by!(name: 'Outer biceps')
overall_biceps = Muscle.find_or_create_by!(name: 'Overall biceps')
triceps_short_head = Muscle.find_or_create_by!(name: 'Triceps short head')
triceps_long_head = Muscle.find_or_create_by!(name: 'Triceps long head')
triceps_medial_head = Muscle.find_or_create_by!(name: 'Triceps medial head')
rear_deltoids = Muscle.find_or_create_by!(name: 'Rear deltoids')
front_deltoids = Muscle.find_or_create_by!(name: 'Front deltoids')
lateral_deltoids = Muscle.find_or_create_by!(name: 'Lateral deltoids')
overall_deltoids = Muscle.find_or_create_by!(name: 'Overall deltoids')
upper_pecs = Muscle.find_or_create_by!(name: 'Upper pecs')
lower_pecs = Muscle.find_or_create_by!(name: 'Lower pecs')
inner_pecs = Muscle.find_or_create_by!(name: 'Inner pecs')
overall_pecs = Muscle.find_or_create_by!(name: 'Overall pecs')
outer_quads = Muscle.find_or_create_by!(name: 'Outer quads')
inner_quads = Muscle.find_or_create_by!(name: 'Inner quads')
overall_legs = Muscle.find_or_create_by!(name: 'Overall legs')
hamstrings = Muscle.find_or_create_by!(name: 'Hamstrings')
glutes = Muscle.find_or_create_by!(name: 'Glutes')
calves = Muscle.find_or_create_by!(name: 'Calves')
traps = Muscle.find_or_create_by!(name: 'Trapezius')
lats = Muscle.find_or_create_by!(name: 'Lats')
middle_back = Muscle.find_or_create_by!(name: 'Middle back')

# Muscle groups
biceps.muscles << inner_biceps << outer_biceps << overall_biceps
triceps.muscles << triceps_short_head << triceps_long_head << triceps_medial_head
legs.muscles << outer_quads << inner_quads << hamstrings << glutes << calves
shoulders.muscles << rear_deltoids << front_deltoids << lateral_deltoids
chest.muscles << upper_pecs << lower_pecs << inner_pecs << overall_pecs
back.muscles << traps << lats << middle_back

# LEGS exercises
# inner quads
Exercise.create(name: 'Toes Out Leg Extension', muscles: [inner_quads])
# outer quads
Exercise.create(name: 'Close-stance Seated leg press', muscles: [outer_quads])
Exercise.create(name: 'Close-stance Incline Leg Press', muscles: [outer_quads])
Exercise.create(name: 'Close-stance Squats', muscles: [outer_quads])
# hamstrings
Exercise.create(name: 'Stiff-Leg Deadlift With Dumbbells', muscles: [hamstrings])
Exercise.create(name: 'Stiff-Leg Deadlift With Barbell', muscles: [hamstrings])
Exercise.create(name: 'Barbell Deadlift', muscles: [hamstrings])
Exercise.create(name: 'Lying Hamstring Curls', muscles: [hamstrings])
# Exercise.create(name: 'Seated Hamstring Extension', muscles: [hamstrings])
Exercise.create(name: 'Standing Hamstring Extension', muscles: [hamstrings])
# glutes
Exercise.create(name: 'Dumbbell Lunges', muscles: [glutes])
Exercise.create(name: 'Single Leg Dumbbell Step Up', muscles: [glutes])
# calves
Exercise.create(name: 'Seated Calf Raises', muscles: [calves])
Exercise.create(name: 'Standing machine calf raises', muscles: [calves])
Exercise.create(
  name: 'Calf Press On Seated Leg Press Machine',
  muscles: [calves]
)
Exercise.create(name: 'Calf Press On Decline Leg Press Machine',
  muscles: [calves]
)
Exercise.create(name: 'Calf Press Machine', muscles: [calves])
# overall legs
Exercise.create(name: 'Decline Leg Press', muscles: [overall_legs])
Exercise.create(name: 'Barbell Back Squat', muscles: [overall_legs])
Exercise.create(name: 'Barbell Front Squat', muscles: [overall_legs])

# BICEPS exercises
# inner biceps
Exercise.create(
  name: 'Close-grip EZ Bar Standing Curls',
  muscles: [inner_biceps]
)
Exercise.create(
  name: 'Close-grip Seated Machine Biceps Curls',
  muscles: [inner_biceps]
)
Exercise.create(
  name: 'Close-grip Seated Preacher Curls',
  muscles: [inner_biceps]
)
# outer biceps
Exercise.create(name: 'Standing One-Arm Cable Curls', muscles: [outer_biceps])
Exercise.create(name: 'Side ways Seated Preacher Curls', muscles: [outer_biceps])
Exercise.create(name: 'Wide-Grip Barbell Curls', muscles: [outer_biceps])
Exercise.create(name: 'Overhead Cable Curls', muscles: [outer_biceps])
Exercise.create(name: 'Incline Bench Dumbbell Curls', muscles: [outer_biceps])
# overall biceps
Exercise.create(name: 'Hammer Curls', muscles: [overall_biceps])
Exercise.create(name: 'Concentration Curls', muscles: [overall_biceps])
Exercise.create(name: 'Dumbbell Biceps Curls', muscles: [overall_biceps])
Exercise.create(name: "One-Arm Seated Dumbbell Preacher Curls", muscles: [overall_biceps])

# TRICEPS
# triceps medial head
Exercise.create(name: "Dumbell Skull Crushers", muscles: [triceps_medial_head])
Exercise.create(name: "Dips", muscles: [triceps_medial_head])
# triceps short head
Exercise.create(name: "Triceps Flat Bar Pulldown", muscles: [triceps_short_head])
Exercise.create(name: "Triceps Rope Pulldown", muscles: [triceps_short_head])
Exercise.create(name: "Reverse-Grip Triceps Pulldown", muscles: [triceps_medial_head])
# triceps long head
Exercise.create(name: "Triceps EZ Bar Skull Crushers", muscles: [triceps_long_head])
Exercise.create(name: "Standing Triceps Overhead Extension", muscles: [triceps_long_head])
Exercise.create(name: "Seated Triceps Overhead Extension", muscles: [triceps_long_head])
Exercise.create(name: "Standing One-Arm Triceps Extension", muscles: [triceps_medial_head])

# SHOULDERS
# front deltoids
Exercise.create(name: "Front Dumbbell Raise", muscles: [front_deltoids])
Exercise.create(name: "Front Cable Raise", muscles: [front_deltoids])
# lateral deltoids
Exercise.create(name: "Dumbbell Lateral Raise", muscles: [lateral_deltoids])
Exercise.create(name: "Lateral Cable Raise", muscles: [lateral_deltoids])
Exercise.create(name: "Wide Grip Upright Barbell Row", muscles: [lateral_deltoids])
Exercise.create(name: "Seated Dumbbell Lateral Raise", muscles: [lateral_deltoids])
Exercise.create(name: "Machine Lateral Raise", muscles: [lateral_deltoids])
# rear deltoids
Exercise.create(name: "Reverse Cable Flyes", muscles: [rear_deltoids])
Exercise.create(name: "Reverse Cable Flye Machine", muscles: [rear_deltoids])
# overall deltoids
Exercise.create(name: "Single-Arm Linnear Jammer", muscles: [overall_deltoids])
Exercise.create(name: "Side Laterals to Front Raise", muscles: [overall_deltoids])
Exercise.create(name: "Dumbbell Shoulder Press", muscles: [overall_deltoids])
Exercise.create(name: "Standing Palms-In Dumbbell Press", muscles: [overall_deltoids])
Exercise.create(name: "Standing Barbell Shoulder Press", muscles: [overall_deltoids])
Exercise.create(name: "Seated Dumbbell Shoulder Press", muscles: [overall_deltoids])
Exercise.create(name: "Upright Barbell Row", muscles: [overall_deltoids])
Exercise.create(name: "Arnold Press", muscles: [overall_deltoids])

# CHEST
# upper pecs
Exercise.create(name: "Incline Bench Press", muscles: [upper_pecs])
Exercise.create(name: "Incline Dumbbell Flyes", muscles: [upper_pecs])
Exercise.create(name: "Incline Press Machine", muscles: [upper_pecs])
# lower pecs
Exercise.create(name: "Lower Pec Press Machine", muscles: [lower_pecs])
# inner pecs
Exercise.create(name: "Cable Flyes", muscles: [inner_pecs])
Exercise.create(name: "Fly Machine", muscles: [inner_pecs])
# overall pecs
Exercise.create(name: "Bench Press", muscles: [overall_pecs])
Exercise.create(name: "Dumbbell Bench Press", muscles: [overall_pecs])

# BACK
# lats
Exercise.create(name: "V-Bar Pulldown", muscles: [lats])
Exercise.create(name: "Close-Grip Lat Pulldown", muscles: [lats])
Exercise.create(name: "Wide-Grip Lat Pulldown", muscles: [lats])
Exercise.create(name: "Reverse Grip Lat Pulldown", muscles: [lats])
Exercise.create(name: "Rope Straight-Arm Pulldown", muscles: [lats])
# middle back
Exercise.create(name: "Seated Cable Rows", muscles: [middle_back])
Exercise.create(name: "Seated One-arm Cable Pulley Rows", muscles: [middle_back])
Exercise.create(name: "Lying T-Bar Row Machine", muscles: [middle_back])
Exercise.create(name: "High Row Machine", muscles: [middle_back])
#traps
Exercise.create(name: "Dummbell Shrugs", muscles: [traps])
Exercise.create(name: "Smith Machine Shrugs", muscles: [traps])
Exercise.create(name: "Barbell Shrugs", muscles: [traps])

  # Glutes & hamstrings
  #   Lunges
  #   Bulgarian split squat
  #   Goblet squat
  #   incline leg press
  #   Back squats
  #   Single legged dumbbell deadlift
  #   stiff legged deadlifts w/ dumbbells
  #   stiff legged deadlifts w/ barbell
  #   seated hamstring curls
  #   lying hamstring curls
  #   standing hamstring curls
  # Outer quads
  #   back squats
  #   close stance seated leg press
  #   close stance declined leg press
  # Inner quads
  #   front squats
  #   wide stance leg extensions
  #   bulgarian split squat
  # Calves
  #   seated calf raise
  #   standing calf raise
  #   leg press calf raises
  #   seats calf twist








