require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Unrau", last_name: "Sarah", hourly_rate: 50)
@store1.employees.create(first_name: "Bartels", last_name: "Nolan", hourly_rate: 40)

@store2.employees.create(first_name: "Johnston", last_name: "Tim", hourly_rate: 60)
@store2.employees.create(first_name: "Fast", last_name: "Mackenzie", hourly_rate: 90)
@store2.employees.create(first_name: "Walde", last_name: "Tannis", hourly_rate: 40)
@store2.employees.create(first_name: "McDonnell", last_name: "Gemma", hourly_rate: 80)

allEmployees = Employee.all
puts allEmployees.count

