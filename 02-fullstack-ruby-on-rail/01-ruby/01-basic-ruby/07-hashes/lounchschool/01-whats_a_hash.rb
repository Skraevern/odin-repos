irb :001 > old_syntax_hash = {:name => 'bob'}
=> {:name=>'bob'}

irb :002 > new_hash = {name: 'bob'}
=> {:name=>'bob'}

irb :003 > person = { height: '6 ft', weight: '160 lbs' }
=> {:height=>'6 ft', :weight=>'160 lbs'}

irb :004 > person[:hair] = 'brown'
=> "brown"
irb :005 > person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}

irb :006> person[:age] = 62
=> 62
irb :007> person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :age=>62}

irb :008 > person.delete(:age)
=> 62
irb :009 > person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}

irb :010 > person[:weight]
=> "160 lbs"

irb :011 > person.merge!(new_hash)
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :name=>'bob'}