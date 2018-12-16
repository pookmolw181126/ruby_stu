# 块应用于数组
arr = ["a","b","c"]
arr.each{|obj| p obj}
arr.each_with_index{|obj,idx| p [obj,idx]}
arr.each{|i| p i.upcase}

# 块应用于散列：提取的是键值对，将其作为数组传进块内
sum = 0
h = {"fee"=>100,"bid"=>200,"sell"=>300}
h.each do |pair|
	sum += pair[1]
end
p sum

# 块应用于散列：改变块变量，使得键值分别传给不同变量
sum = 0 
h.each do |item,price|
	sum += price
end
p sum

# 块应用于文件读取
file = File.open(ARGV[0])
file.each_line do |line|
	print line
end
file.close


