$ irb
> "Ruby Monstas".methods.sort
=> [:*, :+, :<, :>, :[], :class, :downcase, :delete, :include?, :is_a?, :length, :prepend, :start_with?]


$ irb
> name = "Ruby Monstas"
> name.prepend("Oh, hello, ").upcase
=> "OH, HELLO, RUBY MONSTAS"