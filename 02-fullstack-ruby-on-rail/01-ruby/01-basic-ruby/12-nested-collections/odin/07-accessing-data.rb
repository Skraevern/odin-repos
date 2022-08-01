vehicles = {
    alice: {year: 2019, make: "Toyota", model: "Corolla"},
    blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
    caleb: {year: 2020, make: "Honda", model: "Accord"}
  }

#   Accessing a specific element in a nested hash is very similar to a nested array. It is as simple as calling hash[:x][:y], where :x is the key of the hash and :y is the key of the nested hash.

vehicles[:alice][:year]
#=> 2019
vehicles[:blake][:make]
#=> "Volkswagen"
vehicles[:caleb][:model]
#=> "Accord"



# Similar to nested arrays, if you try to access a key in a nonexistent nested hash, it will raise an NoMethodError, therefore you may want to use the #dig method. As expected, if you try to access a nonexistent key in an existing nested hash, it will return nil.

vehicles[:zoe][:year]
#=> NoMethodError
vehicles.dig(:zoe, :year)
#=> nil
vehicles[:alice][:color]
#=> nil
vehicles.dig(:alice, :color)
#=> nil