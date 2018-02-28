User.create!(email: 'jsanch@somewhere.com', password: "password", password_confirmation: "password")


#Muscle groups
biceps = MuscleGroup.find_or_create_by!(name: 'Biceps')
triceps = MuscleGroup.find_or_create_by!(name: 'Triceps')
legs = MuscleGroup.find_or_create_by!(name: 'Legs')
shoulders = MuscleGroup.find_or_create_by!(name: 'Shoulders')
back = MuscleGroup.find_or_create_by!(name: 'Back')
chest = MuscleGroup.find_or_create_by!(name: 'Chest')

#Muscles
inner_biceps = Muscle.find_or_create_by!(name: 'Inner biceps')
outer_biceps = Muscle.find_or_create_by!(name: 'Outer biceps')
overall_biceps = Muscle.find_or_create_by!(name: 'Overall biceps')
triceps_short_head = Muscle.find_or_create_by!(name: 'Triceps short head')
triceps_long_head = Muscle.find_or_create_by!(name: 'Triceps long head')
triceps_medial_head = Muscle.find_or_create_by!(name: 'Triceps medial head')
rear_deltoids = Muscle.find_or_create_by!(name: 'Rear deltoids')
front_deltoids = Muscle.find_or_create_by!(name: 'Front deltoids')
lateral_deltoids = Muscle.find_or_create_by!(name: 'Lateral deltoids')
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
lower_lats = Muscle.find_or_create_by!(name: 'Lower lats')

#Muscle groups
biceps.muscles << inner_biceps << outer_biceps << overall_biceps
triceps.muscles << triceps_short_head << triceps_long_head << triceps_medial_head
legs.muscles << outer_quads << inner_quads << hamstrings << glutes << calves
shoulders.muscles << rear_deltoids
chest.muscles << upper_pecs << lower_pecs << inner_pecs << overall_pecs
back.muscles << traps << lower_lats

#LEGS exercises
#inner quads


#outer quads
Exercise.create(name: "Close-stance seated leg press", muscles: [outer_quads])

#hamstrings

#glutes
Exercise.create(name: "Dumbbell lunges", muscles: [glutes])

#calves
Exercise.create(name: "Seated calf raises", muscles: [calves])
Exercise.create(name: "Standing machine calf raises", muscles: [calves])

#overall legs
Exercise.create(name: "Incline leg press", muscles: [overall_legs])


#BICEPS exercises
#inner biceps
Exercise.create(name: "Close-grip EZ bar standing curls", muscles: [inner_biceps])
Exercise.create(name: "Seated machine biceps curls", muscles: [inner_biceps])
Exercise.create(name: "Close-grip seated preacher curls", muscles: [inner_biceps])

#outer biceps
Exercise.create(name: "Standing One-Arm Cable Curls", muscles: [outer_biceps])
Exercise.create(name: "Side ways seated preacher curls", muscles: [outer_biceps])
Exercise.create(name: "Wide-Grip Barbell Curls", muscles: [outer_biceps])
Exercise.create(name: "Overhead Cable Curls", muscles: [outer_biceps])
Exercise.create(name: "Incline Bench Dumbbell Curls", muscles: [outer_biceps])

#overall biceps
Exercise.create(name: "Hammer Curls", muscles: [overall_biceps])
Exercise.create(name: "Concentration Curls", muscles: [overall_biceps])
Exercise.create(name: "Dumbbell Biceps Curls", muscles: [overall_biceps])
Exercise.create(name: "One-Arm Seated Dumbbell Preacher Curls", muscles: [overall_biceps])



