# 新建散列存放单词-个数的键值对，并设置默认值
count = Hash.new(0)
# 读取文件并统计单词个数
File.open(ARGV[0]).each do |file|
	file.each_line do |line|
		 words = line.split
		 words.each do |word|
		 	count[word] += 1
		 end
	end
end	
# 对结果排序并输出
count.sort{|a,b| 
	a[1] <=> b[1]
}.each do |key,value|
	print "#{key} : #{value}\n"
end