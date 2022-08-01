$ irb
> 5.odd?
=> true

> 5.even?
=> false


> 5.between?(1, 10)
=> true

> 5.between?(11, 20)
=> false



> name = "Ruby Monstas"
> name.start_with?("R")
=> true
> name.start_with?("a")
=> false


> name = "Ruby Monstas"
> name.include?("by")
=> true

> name.include?("r")
=> false


$ irb
> 1.methods.sort
=> [:*, :+, :-, :/, :between?, :even?, :odd?, :zero?]


> 0.zero?
=> true

> 1.zero?
=> false


[1, 2].include?(1)
=> true

> [1, 2].include?(3)
=> false

> { "eins" => "one" }.key?("eins")
=> true

> { "eins" => "one" }.key?("zwei")
=> false
