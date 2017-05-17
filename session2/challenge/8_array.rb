# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(arr)
   consec = []
   arr.each_with_index do |item, i|
     consec << item if consec.include?(item) || i == 0
     consec.clear if !consec.include?(item)
     break if consec.size == 3
   end
  consec.size == 3 ? true : false
end
