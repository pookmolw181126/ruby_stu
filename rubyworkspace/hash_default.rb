#散列的默认值，指定散列中不存在的键时的返回值

#创建散列时指定默认值,所有键都共享这一默认值
h = Hash.new(1)
h["a"] = 10
p h["a"]
p h["b"]

#通过块指定默认值,不同的键使用不同的默认值
h2 = Hash.new do |hash,key|
	hash[key] = key.upcase
end
h2["a"] = "b"
p h2["a"]
p h2["b"]
p h2["c"]

#通过fetch方法指定默认值,优先级是最高的
h3 = Hash.new do |hash,key|
	hash[key] = key.upcase
end
p h3.fetch("x","kkk")
