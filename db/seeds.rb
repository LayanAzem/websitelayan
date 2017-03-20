# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Administrator.delete_all
Role.delete_all
#Platform.delete_all
r = Role.create(name: "Designer")
Role.create(name: "Developer")
#Platform.create([{platformname: "Windows"}, {platformname: "Web Apps"}, {platformname: "iOS"}]) 
Administrator.create(firstname:"tartan", lastname: "xyz", access_level: 1, contact: "lol", school_id: 12, email: "tartan@cmu.edu", password: "foobar")