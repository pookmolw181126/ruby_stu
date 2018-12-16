# 初始化散列
h = {"a"=>"v","b"=>"s"}
h.clear
p h.size

# clear 与 Hash.new 的区别
# clear清空了h引用的散列，而Hash.new给h赋值了新的对象

