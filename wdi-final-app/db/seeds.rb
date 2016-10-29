# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Team.create(name:"Team1", branch:"Marine Corps", months:7, start_location: "Twenty-Nine Palms", end_location: "Afghanistan", goal:7400)
Team.create(name:"Team2", branch:"Marine Corps", months:7, start_location: "Twenty-Nine Palms", end_location: "Afghanistan", goal:7400)
Team.create(name:"Team3", branch:"Marine Corps", months:7, start_location: "Twenty-Nine Palms", end_location: "Afghanistan", goal:7400)
Team.create(name:"Team4", branch:"Marine Corps", months:7, start_location: "Twenty-Nine Palms", end_location: "Afghanistan", goal:7400)

User.create(first_name: "Laura", last_name: "Russell", username: "lrussell", password_digest: "password", branch:"Marine Corps", start_location: "Twenty-Nine Palms", end_location: "Afghanistan")
User.create(first_name: "Kevin", last_name: "Walley", username: "krussell", password_digest: "password", branch:"Marine Corps", start_location: "Twenty-Nine Palms", end_location: "Afghanistan")
User.create(first_name: "Sarah", last_name: "Walley", username: "swalley", password_digest: "password", branch:"Marine Corps", start_location: "Twenty-Nine Palms", end_location: "Afghanistan")
User.create(first_name: "Nick", last_name: "Walley", username: "nwalley", password_digest: "password", branch:"Marine Corps", start_location: "Twenty-Nine Palms", end_location: "Afghanistan")

Log.create(date: 2016-10-24, mileage: 5, user_id: 1)
Log.create(date: 2016-10-24, mileage: 10, user_id: 2)
Log.create(date: 2016-10-24, mileage: 15, user_id: 3)
Log.create(date: 2016-10-24, mileage: 20, user_id: 4)
Log.create(date: 2016-10-24, mileage: 25, user_id: 4)
Log.create(date: 2016-10-24, mileage: 5, user_id: 6)

