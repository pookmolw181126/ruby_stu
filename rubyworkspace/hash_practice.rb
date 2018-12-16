#-*- coding: UTF-8 -*-
# 
wday = {Monday:"周一",Tuesday:"周二",Wednesday:"周三",Thursday:"周四",Friday:"周五",Saturday:"周六",Sunday:"周日"}
puts wday[:Monday]
puts wday[:Sunday]

# 
count = 0
wday.each do |key,value|
	count += 1
end
puts "count:#{count}"

# 
wday.each{|key,value| puts "\"#{key}\" 是#{value}。"}

# 
str = "blue 蓝色	white 白色	\nred 红色"
h = Hash.new
 def str2hash(str)
	arr = str.split
	
  		