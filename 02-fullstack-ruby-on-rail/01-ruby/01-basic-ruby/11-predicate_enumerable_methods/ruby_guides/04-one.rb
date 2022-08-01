# You can check if EXACTLY one element returns true with the one? method.

# Here’s an example:

["a", 1, {}].one? { |obj| obj.kind_of?(Hash) }
# true

# You can use this without a block to check if the array contains exactly one truthy value (anything but false / nil).

["a"].one?
# true

[].one?
# false

[nil].one?
# false

# I will stick to size == 1 because it’s more explicit. Everyone will understand that even if they aren’t familiar with the one? method, which is not that common.