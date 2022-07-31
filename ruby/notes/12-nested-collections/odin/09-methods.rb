vehicles = {
    alice: {year: 2019, make: "Toyota", model: "Corolla"},
    blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
    caleb: {year: 2020, make: "Honda", model: "Accord"}
  }
  vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}

#   There are many helpful methods to use with nested hashes. Once you know what data you need from a nested hash, I have found that browsing through the documentation and experimenting with them in IRB is the best way for me to understand how they work.

# Let’s look at an example using the vehicles nested hash. Let’s say that we want to know who owns vehicles that are from 2020 or newer. At first glance in the documentation, it looks like #select would be a great method to use.

vehicles.select { |name, data| data[:year] >= 2020 }
#=> {:caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}


# Yes, using #select gives us the information that we need. However, what if we only want the names of the owners and not another nested hash. Let’s keep looking through the documentation to see what else we find. The #collect method sounds very useful for this situation. Let’s collect the names if the year is 2020 or newer.

vehicles.collect { |name, data| name if data [:year] >= 2020 }
#=> [nil, :caleb, :dave]

# Using #collect gets us a lot closer to only having the names of the new vehicle owners. If you look at this method in the documentation you will see that #collect and #map have the same functionality. Both of these methods use the return value of each iteration, so when the if statement is false, it will return a nil value.

# Nil values can cause problems down the road, so let’s look through the documentation to see if we can find a method to help solve this problem. The #compact method returns an array (or hash) without nil values, so let’s chain it on the end of the block.

vehicles.collect { |name, data| name if data[:year] >= 2020}.compact

#=> [:caleb, :dave]


# Yes, using #collect and #compact returns the data that we want. As you can see, chaining methods can be very useful. However, if we continue exploring the documentation, we will find another method that combines the functionality of these two methods. Ruby version 2.7 added a new enumerable method called #filter_map that sounds very useful for this situation.

vehicles.filter_map { |name, data| name if data[:year] >= 2020 }
#=> [:caleb, :dave]

# Amazing! We have found a great solution to returning an array that only contains the names of the owners of vehicles from 2020 or newer! Plus, we got experience using other methods that you will probably use in the future. I have found some really useful methods by exploring the documentation when I have a specific use case in mind.

