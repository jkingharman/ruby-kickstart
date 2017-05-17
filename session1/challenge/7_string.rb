# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  after_r = []
  each_let = string.split(//)
	each_let.each_with_index {|letter, i| after_r << each_let[i + 1] if letter =~ /r|R/}
	after_r.join
end
