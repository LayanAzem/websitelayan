# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Role.delete_all
Type.delete_all
r = Role.create(name: "Employer")
Role.create(name: "Job Seeker")
Type.create([{name: "Executive"}, {name: "Networking"}, {name: "Programming"}, {name: "Design"}]) 
User.create(name:"tartan", email: "tartan@cmu.edu", password: "foobar", admin: true, role_id: r.id)