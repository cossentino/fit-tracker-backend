# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# workouts = [{
#   date: '2021-03-02',
#   workout_type: 'swim',
#   exert: 9,
#   miles: 3,
#   location: "Boston, MA",
#   notes: "tough swim"},

#   {
#     date: '2020-12-31',
#     workout_type: 'bike',
#     exert: 5,
#     miles: 15,
#     pace: '05:00',
#     location: "Winchester, MA",
#     notes: "easy bike ride through the fells"},
  
#     {
#       date: '2021-04-01',
#       workout_type: 'run',
#       exert: 8,
#       miles: 10,
#       pace: '07:56',
#       location: "Boston, MA",
#       notes: "weekend long run"},
    
#       {
#         date: '2021-03-15',
#         workout_type: 'swim',
#         exert: 3,
#         miles: 1,
#         pace: '12:00',
#         location: "Boston, MA",
#         notes: "morning swim"}]

goals = [{
  description: "Ian's half-marathon training",
  month: "April",
  sport: "run",
  miles: 100
}]

workouts.each do |w|
  wo = User.first.workouts.build(w)
  wo.save
end