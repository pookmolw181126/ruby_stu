# 匹配普通字符
/ABC/ #匹配包含ABC的

# 匹配行首行尾
/^ABC/ #匹配行首为ABC的
/ABC$/ #匹配行尾为ABC的
/^ABC$/ #只匹配ABC

# 指定匹配字符的范围
/[ABC]/ #匹配ABC任意一个
/[A-Z]/ #匹配全部大写字母
/[a-z]/ #匹配全部小写字母
/[0-9]/ #匹配所有数字
/[A-Za-z]/ #匹配所有字母
/[A-Za-z_]/ #匹配所有字母和下划线
/[A-Za-z_-]/ #全部字母下划线和-
/[^ABC]/ #匹配除ABC外的
/[^A-Za-z]/ #匹配除所以字母外的
/[A-Z][0-9]/ #匹配一个字母加上一个数字的

# 匹配任意字符
/A.C/ #匹配A和任意字符和B
/aaa.../ #匹配aaa和3个任意字符
/^...$/ #匹配字符数为3的行

# 反斜杠表示特殊字符
# \d
/\d\d\d-\d\d\d\d/ #匹配如010-1313
# \w
/\w\w\w/ #匹配英文字母和数字
# \s  匹配空白符如空格，制表符，换行符，换页符
/ABC\sDEF/
# \A 匹配字符串的开头
/\AABC/
# \z 匹配字符串的结尾
/ABC\z/

# 元字符转义
/ABC\[/
/\^ABC/

# 重复
# * 重复0次以上 
/A*/  ""
/A.*C/ "A01231C"
/A*C/ "AC"
/^Subject:\s*.*/  "Subject: foo"
# + 重复1次以上
/AAA+C/ "AAAC"
/A.+C/ "A C"
# ? 重复0次或1次
/^A?$/ "A" ""
/^A?C/ "C" "AC"
/A.?C/ "AC" "ABC" 

# 最短匹配
/A.*B/ "ABCDABCDABCD"-->"ABCDABCDAB"
/A.*?B/ "ABCDABCDABCD"-->"AB" 
/A.+B/ "ABCDABCDABCD"-->"ABCDABCDAB"
/A.+?B/ "ABCDABCDABCD"-->"ABCDAB"

# ()与重复
/^(ABC)*$/ "ABC" "" "ABCABC"
/^(ABC)+$/ "ABC" "ABC"
/^(ABC)?$/ "ABC" ""

# 选择
/^(ABC|DEF)$/ "ABC"
/^(AB|CD)$/ "ABCD"
