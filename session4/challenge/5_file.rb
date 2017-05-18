# you will be given a file name
# inside the file will be a series of numbers
# find the largest number on each line
# return their sum
#
# EXAMPLE
#     file: nums.txt
#      406 217 799 116 45 651 808 780
#      205 919 474 567 712
#      776 170 681 86 822 9 100 540 812
#      602 117 181 169 876 336
#      434 165 725 187 974 48
#
# line_sums('nums.txt')   # =>   808 + 919 + 822 + 876 + 974   # =>   4399



def line_sums(name)
	max_arr = []
	File.readlines(name).each do |line|
		max_arr << line.split(' ').map! {|item| item.to_i }.max
	end
	sum = max_arr.inject {|agg, obj| agg + obj}
	sum.nil? ? 0 : sum
end
