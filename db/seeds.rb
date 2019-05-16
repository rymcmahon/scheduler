# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 20.times do
#   Employee.create(
#     password: '123456',
#     password_confirmation: '123456',
#     email: Faker::Internet.email,
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     phone_number: Faker::PhoneNumber.cell_phone
#   )
# end

@employees = Employee.all
@employees.each do |employee|
  5.times do
    time = Faker::Time.between(10.days.ago, 17.days.from_now, :day)
    WorkShift.create(
      employee_id: employee.id,
      starts_at: time,
      ends_at: (time + 6.hours)
    )
  end
end