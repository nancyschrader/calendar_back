# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
    Event.create(
        name: Faker::Hacker.verb,
        description: Faker::Hacker.say_something_smart,
        start_at: Faker::Time.forward(days:90, format: :long),
        end_at: Faker::Time.forward(days:90, format: :long),
        color: Faker::Color.color_name,
        all_day: Faker::Boolean.boolean
    )
end
puts "seeded database"