require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
stores = Store.all

totalRevenue = stores.sum("annual_revenue")
puts totalRevenue

averageRevenue = stores.average("annual_revenue")
puts averageRevenue

totalStoresOver1M = stores.where("annual_revenue >= ?", 1000000).count
puts totalStoresOver1M