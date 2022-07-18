# If you need an index with your values you can use the with_index method.A

array = %w(a b c)

array.map.with_index { |ch, idx| [ch, idx] }

# [["a", 0], ["b", 1], ["c", 2]]