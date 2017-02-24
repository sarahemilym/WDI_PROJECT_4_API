User.destroy_all
Room.destroy_all
Request.destroy_all

User.create!(first_name: "Sarah", last_name: "Mendham", email: "sarah@sarah.com", password: "password", password_confirmation: "password", spotify_id: "sarahemily-m")

User.create!(first_name: "Billy", last_name: "Smith", email: "billy@billy.com", password: "password", password_confirmation: "password", spotify_id: "billys")

User.create!(first_name: "Tony", last_name: "Smith", email: "tony@tony.com", password: "password", password_confirmation: "password", spotify_id: "tonyT")

User.create!(first_name: "Pat", last_name: "Joy", email: "pat@pat.com", password: "password", password_confirmation: "password", spotify_id: "joyfulPat")

User.create!(first_name: "Paul", last_name: "Weller", email: "paul@weller.com", password: "password", password_confirmation: "password", spotify_id: "paulweller")

User.create!(first_name: "Paul", last_name: "Simon", email: "paul@simon.com", password: "password", password_confirmation: "password", spotify_id: "paulsimon")
