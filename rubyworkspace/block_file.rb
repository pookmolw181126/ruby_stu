# 块应用于打开file
# File.open在接受块后，会将File对象作为块变量，并执行一次块
File.open(ARGV[0]) do |file|
	file.each_line |line|
		print line
	end
end