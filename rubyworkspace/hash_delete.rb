# 删除键值

# 通过键删除
h = {"R"=>"Ruby"}
p h["R"]
h.delete("R")
p h["R"]

# delete方法使用块，不存在键则返回块的执行结果
p h.delete("r"){|key| "no #{key}."}

# 只删除符合某条件的键值,返回删除后的散列，不符合则返回原散列
h = {"J"=>"Java","P"=>"Perl"}
p h.delete_if{|key,value| key == "P"}

# 只删除符合某条件的键值,返回删除后的散列，不符合则返回nil
h2 = {"h"=>"hash","a"=>"array"}
p h.reject!{|key,value| key == "d"}

