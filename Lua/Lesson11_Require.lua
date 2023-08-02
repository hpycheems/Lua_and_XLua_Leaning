print("*********多脚本执行***********")
print("*********全局变量和本地变量***********")
-- 全局变量
a = 1;
b = "123";

for i=1,2 do
	c = "~~~";
end
print(c);

-- 本地（局部）变量 local 
for i=1,2 do
	local d = "!!!";
	print("循环中的D"..d);
end
print(d);

-- 函数里面声明的全局变量也可以在函数外面使用
fun = function ( ... )
	-- body
	tt = "321312";
end
fun();
print(tt);

fun = function ( ... )
	-- body
	local dd = "2313";
end
fun();
print(dd);
local dd2 = "333";
print(dd2)

print("*********多脚本执行***********")
-- 关键字 require("脚本名")
require("Test");
print(testA); -- 只要执行过这个脚本 ，它当中的全局变量都可在此使用
print(testLocalA);


print("*********脚本卸载***********")
-- 如果是require加载执行的脚本， 加载一次后不会再被执行
require("Test");
-- package.loaded["脚本名"]
-- 返回值是boolean 意思是 该脚本是否被执行
print(package.loaded["Test"]);
-- 卸载已经执行过的脚本
package.loaded["Test"] = nil;
print(package.loaded["Test"]);

-- require 执行一个脚本时，可以在脚本最后返回一个局部变量
a =require("Test");
print(a);

print("*********大G表***********")
-- _G 表是一个总表(table) 它将声明的所有全局变量的变量都存储在其中
for k,v in pairs(_G) do
	print(k,v)
end
-- 本地变量 加了lcoal