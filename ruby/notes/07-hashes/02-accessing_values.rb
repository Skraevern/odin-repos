shoes = {
    "summer" => "sandals",
    "winter" => "boots"
  }
  
  shoes["summer"]   #=> "sandals"

  shoes["hiking"]   #=> nil //Sometimes, this behavior can be problematic for you if silently returning a nil value could potentially wreak havoc in your program. Luckily, hashes have a fetch method that will raise an error when you try to access a key that is not in your hash.

  shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"

  shoes.fetch("hiking", "hiking boots") #=> "hiking boots"