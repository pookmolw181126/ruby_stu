# sort :对字母默认按先大写后小写排序，对数值默认按有小到大顺序
arr = ["Betty","Jane","Linda","aries","Alice","Ben"]
arrNum = [0,12,111,43,4]

# 不使用块:默认使用<=>进行比较
sorted =  arr.sort
sorted2 = arrNum.sort
p sorted
p sorted2

# 使用块
# <=> 对字符进行比较，>为0，<为-1，=为0:默认按照字符编码进行比较
sorted = arr.sort{|a,b| a<=>b}
sorted2 = arrNum.sort{|a,b| a<=>b}
p sorted
p sorted2

# 使用块，按字符串长度排序
sorted = arr.sort{|a,b| a.length<=>b.length}
p sorted
