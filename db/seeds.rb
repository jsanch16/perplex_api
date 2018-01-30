# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


inner_biceps = Muscle.find_or_create_by(name: 'Inner biceps')
outer_biceps = Muscle.find_or_create_by(name: 'Outer biceps')
triceps_short_head = Muscle.find_or_create_by(name: 'Triceps short head')
tricpes_long_head = Muscle.find_or_create_by(name: 'Triceps long head')
deltoids = Muscle.find_or_create_by(name: 'Deltoids')
pecs = Muscle.find_or_create_by(name: 'Pecs')
quads = Muscle.find_or_create_by(name: 'Quads')
hamstrings = Muscle.find_or_create_by(name: 'Hamstrings')
glutes = Muscle.find_or_create_by(name: 'Glutes')


#LEGS
lunges = Exercise.create(name: "Dumbbell lunges")
incline_leg_press = Exercise.create(name: "Incline leg press")

lunges.muscles << glutes
lunges.muscles << hamstrings

incline_leg_press.muscles << glutes
incline_leg_press.muscles << hamstrings

#BICEPS
close_grip_ez_bar_standing_curls = Exercise.create(name: "Cloze-grip EZ bar standing curls")
standing_cable_curls = Exercise.create(name: "Standing cable curls")

close_grip_ez_bar_standing_curls.muscles << inner_biceps 



