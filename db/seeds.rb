# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!( name: "Parker Mathewson",
              email: "parkermathewson@gmail.com",
              password: "runot4$real",
              password_confirmation: "runot4$real",
              admin: true,
              activated: true,
              activated_at: Time.zone.now)
          
