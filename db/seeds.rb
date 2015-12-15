100.times do
  Employee.create(
    :first_name => Faker::Name.first_name,
    :last_name => Faker::Name.last_name,
    :email => Faker::Internet.email,
    :birthdate => Faker::Date.backward(50000),
    :ssn => Faker::Code.ean
  )
end
puts "Done!"