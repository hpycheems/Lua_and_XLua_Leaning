print("*********特殊用法***********")
print("*********多变量赋值***********")
a,b,c = 1,2,"123";
print(a,b,c);

-- 多变量赋值 如果后面的值不够 会自动补空
a,b,c = 1,2;
print(a,b,c);

-- 多变量赋值 如果后后面的值多了， 会自动省略
a,b,c = 1,2,4,5,6;
print(a,b,c);

print("*********多返回值***********")
function Test( ... )
	-- body
	return 10,20,30,40;
end
a,b,c,e,d= Test();
print(a,b,c,e,d);

print("*********and or***********")
-- and or 不仅可以连接 boolean 任何东西都可以用来连接
-- 在lua 中 只有 nil 和 false才认为是假

print(1 and 2);
print(nil and 1);

print(true or 1);

-- 利用lua的特性 来模拟三目运算符
x = 3;
y = 2;

local res = (x > y) and x or y;
print(res);

x = 1;
y = 2;
--            假 -> (x > y)(假) or y返回y
local res1 = (x > y) and x or y;
print(res1);
