json.id employee.id
if employee.first_name == "Thora"
  json.first_name employee.first_name + " (I am Thor's sister)"
else
  json.first_name employee.first_name
end
json.lastName employee.last_name
json.full_name employee.full_name
json.birthdate employee.birthdate
json.email employee.email
if employee.addresses.length > 0
  json.addresses employee.addresses do |address|
    json.address_1 address.address_1
    json.address_2 address.address_2
    json.city address.city
    json.state address.state
    json.zip address.zip
  end
end