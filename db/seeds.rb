# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

biceps = MuscleGroup.find_or_create_by(name: 'Biceps')
triceps = MuscleGroup.find_or_create_by(name: 'Triceps')
legs = MuscleGroup.find_or_create_by(name: 'Legs')
shoulders = MuscleGroup.find_or_create_by(name: 'Shoulders')
back = MuscleGroup.find_or_create_by(name: 'Back')

inner_biceps = Muscle.find_or_create_by(name: 'Inner biceps')
outer_biceps = Muscle.find_or_create_by(name: 'Outer biceps')
overall_biceps = Muscle.find_or_create_by(name: 'Overall biceps')
triceps_short_head = Muscle.find_or_create_by(name: 'Triceps short head')
triceps_long_head = Muscle.find_or_create_by(name: 'Triceps long head')
triceps_medial_head = Muscle.find_or_create_by(name: 'Triceps medial head')

rear_deltoids = Muscle.find_or_create_by(name: 'Rear deltoids')
pecs = Muscle.find_or_create_by(name: 'Pecs')
outer_quads = Muscle.find_or_create_by(name: 'Outer quads')
inner_quads = Muscle.find_or_create_by(name: 'Inner quads')
hamstrings = Muscle.find_or_create_by(name: 'Hamstrings')
glutes = Muscle.find_or_create_by(name: 'Glutes')
traps = Muscle.find_or_create_by(name: 'Trapezius')
lower_lats = Muscle.find_or_create_by(name: 'Lower lats')

#Muscle groups
biceps.muscles << inner_biceps << outer_biceps << overall_biceps
triceps.muscles << triceps_short_head << triceps_long_head << triceps_medial_head
legs.muscles << outer_quads << inner_quads << hamstrings << glutes
shoulders.muscles << rear_deltoids
back.muscles << traps << lower_lats

#LEGS exercises
Exercise.create(name: "Dumbbell lunges", muscles: [glutes])
Exercise.create(name: "Incline leg press", muscles: [hamstrings])
Exercise.create(name: "Close-stance seated leg press", muscles: [outer_quads])

#BICEPS exercises
#inner biceps
Exercise.create(name: "Cloze-grip EZ bar standing curls", muscles: [inner_biceps])
Exercise.create(name: "Seated machine biceps curls", muscles: [inner_biceps])

#outer biceps
Exercise.create(name: "Standing cable curls", muscles: [outer_biceps])
Exercise.create(name: "Side ways seated preacher curls", muscles: [outer_biceps])

#overall biceps
Exercise.create(name: "Hammer curls", muscles: [overall_biceps])
Exercise.create(name: "Concentration curls", muscles: [overall_biceps])



