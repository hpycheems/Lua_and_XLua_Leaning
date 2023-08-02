print("=======运算符=========");
print("=======算术运算符=========");
-- + - * / %
-- 没有 ++ --
-- 没有 += -= /= %=
-- 字符串 可以进行 算是运算操作 会自动转成number
print("加法运算" .. 1 + 2);
a = 1;
b = 2;
print(a + b);
print("123.5" + 1);

print("减法运算".. a - b);
print("123.5" - 1);

print("乘法运算".. a * b);
print("123.5" * 1);

print("除法运算".. a / b);
print("123.5" / 1);

print("取余运算".. a % b);
print("123.5" % 1);

print("幂运算" .. 2 ^ 5);

print("=======条件运算符=========");
-- >= <= == ~= < > 
print(1 < 3);
print(1 > 3);
print(1 <= 3);
print(1 >= 3);
print(1 ~= 3);

print("=======逻辑运算符=========");
-- && || ！ ”短路“
print(true and true);
print(true and false);
print(false and false);

print(false or false);
print(true or false);

print(not false);
-- luo中也遵循 “短路” 规则

print("=======位运算符=========");
-- & | 不支持位运算符
print("=======三目运算符=========");
-- ？ ： 不支持三目运算符



