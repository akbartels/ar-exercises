require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name:"Whistler", annual_revenue: 1900000, mens_apparel: true)
store = Store.create(name:"Surrey", annual_revenue: 224000, womens_apparel: true)
store = Store.create(name:"Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel:true)

stores = Store.all

@mens_stores = stores.where(mens_apparel:true)
puts @mens_stores.count
@mens_stores.each {|store| puts "#{store.name} makes $#{store.annual_revenue} annually"}


@womens_stores = stores.where(womens_apparel:true)
puts @womens_stores.count
@womens_stores.each {|store| 
  if store.annual_revenue < 1000000
    puts "#{store.name} makes $#{store.annual_revenue} annually"
  end
}