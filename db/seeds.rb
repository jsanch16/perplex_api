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
triceps_short_head = Muscle.find_or_create_by(name: 'Triceps short head')
tricpes_long_head = Muscle.find_or_create_by(name: 'Triceps long head')
rear_deltoids = Muscle.find_or_create_by(name: 'Rear deltoids')
pecs = Muscle.find_or_create_by(name: 'Pecs')
quads = Muscle.find_or_create_by(name: 'Quads')
hamstrings = Muscle.find_or_create_by(name: 'Hamstrings')
glutes = Muscle.find_or_create_by(name: 'Glutes')
traps = Muscle.find_or_create_by(name: 'Trapezius')
lower_lats = Muscle.find_or_create_by(name: 'Lower lats')

#Muscle groups
biceps.muscles << inner_biceps << outer_biceps
triceps.muscles << triceps_short_head << tricpes_long_head
legs.muscles << quads << hamstrings << glutes
shoulders.muscles << rear_deltoids
back.muscles << traps << lower_lats

#LEGS exercises
lunges = Exercise.create(name: "Dumbbell lunges")
lunges.muscles << glutes << hamstrings

incline_leg_press = Exercise.create(name: "Incline leg press")
incline_leg_press.muscles << glutes << hamstrings

#BICEPS exercises
close_grip_ez_bar_standing_curls = Exercise.create(name: "Cloze-grip EZ bar standing curls")
close_grip_ez_bar_standing_curls.muscles << inner_biceps 

standing_cable_curls = Exercise.create(name: "Standing cable curls")
standing_cable_curls.muscles << outer_biceps



