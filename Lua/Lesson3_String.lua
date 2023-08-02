print("=======字符串=========");
str1 = "双引号字符串"
str2 = '单引号字符串'

-- 获取字符串的长度
print("=======字符串长度=========");
s = "asd一";
-- 一个汉字占3个长度
-- 英文字符 占1个长度
print(#s);

print("=======字符串长度=========");
-- lua支持转义字符
print("123\n123");

s = [[
hello
world!
]];
print(s);

print("=======字符串拼接=========");
-- 通过 .. 拼接
print("123" .. "321");
s1 = 111;
s2 = 222;
print(s1 .. s2);

print(string.format("how old me %d", 18));

print("=======转字符串=========");
a = true;
b = tostring(a);
print(b);


print("=======字符串提供的公共方法=========");
str = "asCFGas"
-- 小写转大写 不会改变原字符串
print(string.upper(str));
-- 大写转小写
print(string.lower(str));
-- 翻转字符串
print(string.reverse(str));
-- 字符串索引查找 多返回值 开始和结束下标
print(string.find(str, "s"));
-- 截取字符串
print(string.sub(str, 3, 4));
-- 字符串重复
print(string.rep(str, 2));
-- 字符串修改 返回两参数 修改后的字符串 以及修改的数量
print(string.gsub(str, "as", "****"));

--字符串 砖 ASCII码
a = string.byte("Lua", 1);
print(a);

--ASCII码 转 字符
print(string.char(a));

