print("=======变量=========");
--lua当中的简单变量类型
-- nil number string boolean
-- lua中所有的变量声明 都不需要声明变量类型 会自动的判断类型
-- 类似c# 里面的 var
-- lua中的一个变量 可以随便赋值——自动识别类型

-- 通过 type 函数 返回值是string  可以 得到变量的类型

-- lua中使用没有声明过的变量，不会报错 默认为nil
print(b);

print(type(type(b)));--type 函数 返回值是string

-- nil 类似 c#中null
print("**********nil**********");
a = nil;
print(a);
print(type(a));

--number 所有的数值都是number
print("**********number**********");
a = 1;
print(a);
print(type(a));

print("**********boolean**********");
a = true;
print(a);
print(type(a));

-- 不管是单引号还是双引号 都是string类型
print("**********string**********");
a = "asd";
print(a);
print(type(a));
a = '123'
print(a);
print(type(a));


-- 复制数据类型
-- 函数 function
-- 表 table
-- 数据结构 userdata
-- 协同程序 thead（线程）