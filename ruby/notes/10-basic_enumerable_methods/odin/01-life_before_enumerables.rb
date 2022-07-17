friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

# Loops
for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end

invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]

# #select
friends.select { |friend| friend != 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]
