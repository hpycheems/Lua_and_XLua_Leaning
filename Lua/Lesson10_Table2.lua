print("*********表table - 2************")
print("********字典************")
print("  ********字典的声明************")
a = {["firstName"] = "l", ["lastName"] = "kx", ["1"] = 123};
-- 访问方式
print(a["firstName"]);

print(a.firstName);
print(a["1"]);

--修改
a.firstName = "T";
-- 新曾
a.sex = "n";
-- 删除
a.sex = nil;

print("  ********字典的遍历************")

for k,v in pairs(a) do
	print(k,v);
end

print("********类和结构体************")
-- Lua中默认是没有面向对象的 需要自己来实现
-- 成员变量 成员函数
Student = {
	age = 1,
	sex = true,
	Up = function ( ... )
		-- body
		print("Up");
		-- 这样写 这个age 和表中的age没有任何关系
		print(age);
		-- 想要在表内部函数中 调用表本身的属性或者方法
		-- 一定要指定是谁的 
		print(Student.age);
	end,

	Learn = function ( t )
		-- body
		print("Learn");
		print(t.name);
	end
}

-- Lua中类的表现 更像是一个类中有很多 静态变量和函数
print(Student.age);
Student.Up();

-- 在表外声明
Student.name = "asdasd";
print(Student.name);

Student.Speak = function ( ... )
	-- body
	print("说话");
end
Student.Speak();

function Student:Speak2()
	-- body
	print(self.name);
	print("说话2");
end
Student:Speak2();

Student.Learn(Student);
Student:Learn();

Student.Speak2(Student);

-- Lua 中. 和 : 的区别
-- : 会默认把调用者传入


print("********表的公共操作************")
-- 表中 table提供的一些公共方法

t1 = {{age = 1, name = "321"}, {age = 2, name = "534"}};
t2 = {name = "ew", sex = true};
-- 插入
print(#t1);
table.insert(t1, t2);
print(#t1);
for k,v in pairs(t1) do
	print(k,v)
end

-- 删除指定元素 指定删除最后的元素
table.remove(t1);
print(#t1);
for k,v in pairs(t1) do
	print(k,v)
end

table.remove(t1, 1);
print(#t1);
for k,v in pairs(t1) do
	print(k,v)
end
print("********排序************")
t2 = {2,1,6,6,5,2};
table.sort(t2);
for k,v in pairs(t2) do
	print(k,v)
end

print("********降序************")
table.sort(t2, function ( a,b )
	-- body
	if(a > b)then
		return true;
	end
end);
for k,v in pairs(t2) do
	print(k,v)
end

print("********拼接************")
tb = {"123", "456", "789"}
str = table.concat(tb, ",");
print(str);
