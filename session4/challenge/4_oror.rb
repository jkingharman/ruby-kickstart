# Write a method first_object, that takes three parameters
# and returns the first one that is true.
#
# EXAMPLES:
# first_object 1, nil, nil    # => 1
# first_object nil, 1, nil    # => 1
# first_object nil, nil, 1    # => 1
# first_object nil, 1, 2      # => 1
# first_object nil, nil, nil  # => nil

def first_object(param1, param2, param3)
  arr = Array.new
  arr << param1 << param2 << param3
  arr.select! {|val| val }
  arr[0]
end
