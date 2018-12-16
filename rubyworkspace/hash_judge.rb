#查看指定对象是否为散列的键或值

#判断散列中是否有键
h = {"a"=>"b","c"=>"d"}
p h.key?("a")
p h.has_key?("c")
p h.include?("a")
p h.member?("z")

#判断散列中是否有值
p h.value?("b")
p h.has_value?(1)