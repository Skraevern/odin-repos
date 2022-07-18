Book = Struct.new(:title)

def find_book(title)
  books = []
  books << Book.new('Eloquent Ruby')

  books.find { |b| b.title == title }
end

book = find_book('Eloquent Ruby')
p book # This will print our book object

book = find_book('POODR')
p book # This will print nil

book.name # Guess what happens next!

# #<struct Book title="Eloquent Ruby">
# nil
# 01-puts.rb:16:in `<main>': undefined method `name' for nil:NilClass (NoMethodError)

# book.name # Guess what happens next!
#     ^^^^^
