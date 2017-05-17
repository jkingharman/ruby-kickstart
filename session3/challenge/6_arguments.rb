# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]



def match_maker(*args)

	matching_rule = args[0]
	args[0] = nil
	args.delete(nil)
	outer_arr = []
	inner_arr = []
	i = 0

	while i < args.size
		if inner_arr.size == 2
			outer_arr << inner_arr
			inner_arr = []
		end
		inner_arr << args[i]
		i += 1
	end

	outer_arr << inner_arr

	outer_arr.map! do |arr|

		if matching_rule
			if arr[0] == false && arr[1] == false
				arr = false
			elsif arr[0] == true && arr[1] == true
			    arr = false
			else
				arr = true
			end

		elsif not matching_rule
			if arr[0] == false && arr[1] == false
				arr = true
			elsif arr[0] == true && arr[1] == true
			    arr = true
			else
				arr = false
			end
		end
	end

	outer_arr.flatten
end
