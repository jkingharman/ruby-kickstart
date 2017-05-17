# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    every_other = []
	  self.chars.each_with_index {|char, i| every_other << char if i.even?}
	  every_other.join
  end
end
