print("************元表************")
print("************元表的概念************")
-- 任何表变量都可以作为另一个表变量的元表
-- 任何表变量都可以有自己的元表
-- 当子表中进行一些特定操作时 会执行元表中的内容
print("************设置元表************")
mete = {}
myTable = {}
--设置元表函数
-- 第一个参数 子表
-- 第二个参数 元表
setmetatable(myTable, meta);

print("************特定操作************")
print("************特定操作- __tostring************")
meta2 = {
	-- 当子表要被当作字符串使用时 会默认调用这个元表中的tostring方法
	__tostring = function ( t )
		-- body
		return t.name
	end
}
myTabe2 = {
	name = "lx";
}
setmetatable(myTabe2, meta2);
print(myTabe2);
print("************特定操作- _call************")
meta3 = {
	-- 当子表要被当作字符串使用时 会默认调用这个元表中的tostring方法
	__tostring = function ( t )
		-- body
		return t.name
	end,
	-- 当子表要被当作函数使用时 会默认调用这个元表中的__Call方法
	-- 第一个参数是调用者
	__call = function ( a )
		-- body
		print(a);
		print("!!!");
	end
}
myTabe3 = {
	sex = true
	,name = "lx"
	
}
setmetatable(myTabe3, meta3);
myTabe3();

print("************特定操作- 运算符重载************")
meta4 = {
	__add = function ( a,b )
		-- body
		return a.age + b.age;
	end,
	__sub = function ( a,b )
		-- body
		return a.age - b.age;
	end,
	__mul = function ( a,b )
		-- body
		return 1;
	end,
	__div = function ( a,b )
		-- body
		return 2;
	end,
	__mod = function ( a,b )
		-- body
		return 3;
	end,
	__pow = function ( a,b )
		-- body
		return 4;
	end,
	__eq = function ( a,b )
		-- body
		return 0;
	end,
	__lt = function ( a,b )
		-- body
		return false;
	end,
	__le = function ( a,b )
		-- body
		return true;
	end,
	__concat = function (a,b )
		-- body
		return "!!";
	end


}
myTable4 = {
	age = 20;
}
setmetatable(myTable4, meta4);
myTable5 = {
	age = 2;
}

print(myTable5 + myTable4);
print(myTable5 - myTable4);
print(myTable5 * myTable4);
print(myTable5 / myTable4);
print(myTable5 % myTable4);
print(myTable5 ^ myTable4);

-- 如果要用条件运算符 来比较两个对象
-- 这两个元表一定要一致 才能准确调用方法

print("************特定操作- _index和 _newIndex************")
meta6 = {
	age = 2;
}
meta6.__index = meta6;
myTable6 = {}

setmetatable(myTable6, meta6);

--print(myTable6.age);

-- __index 当子表中 找不到某个属性时
-- 会到元表中 __index指定的表去找索引
print(myTable6.age);

-- newindex 当赋值时 如果赋值一个不存在的索引
-- 那么会把这个赋值到newIndex所指的表中 不会修改自己
meta7 = {}
meta7.__newindex ={}
myTable7 = {}
setmetatable(myTable7, meta7);
myTable7.age = 1;
print(myTable7.age);
print(meta7.__newindex.age);

-- 获取元表
print(getmetatable(myTable7));

-- 查找自己身上的变量
-- print(rawget(myTable7.age));
