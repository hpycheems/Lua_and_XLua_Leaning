print("************面向对象************")
print("************封装************")
-- 面向对象 类 都是基于 table来实现
Object = {}
Object.id = 1

function Object:Test()
	-- body
	print(self.id);
end

-- 冒号 是会自动将调用这个函数的对象 作为第一个参数传入的写法
function Object:new()
	-- self 代表的是 默认传入的第一个参数
	-- 对象就是变量 返回一个新的变量
	-- 返回出去的内容 本质上就是表对象
	local obj = {};
	self.__index = self;
	setmetatable(obj, self);
	return obj;
end

local myObj = Object:new();
print(myObj);
print(myObj.id);
myObj:Test();
-- 在空表中声明新的属性
myObj.id = 2;
print(Object.id);
myObj:Test();

print("************继承************")
-- 写一个用于继承的方法
function Object:subClass(className)
	_G[className] = {};

	local obj = _G[className];
	self.__index = self;

	obj.base = self;
	setmetatable(obj, self);
end

Object:subClass("Person");
print(Person.id);

local p1 = Person:new();
print(p1.id);

print("************多态************")
-- 相同行为 不同表现 就是多态
-- 相同方法 不同执行逻辑 
Object:subClass("Gameobject");
Gameobject.posX = 0;
Gameobject.posY = 0;
function Gameobject:Move(  )
	-- body
	self.posX = self.posX + 1;
	self.posY = self.posY + 1;
	print(self.posX, self.posY);
end

Gameobject:subClass("Player");
function Player:Move(  )
	-- body
	self.base.Move(self);
	print("!!");
end

local p1 = Player:new();
p1:Move();
p1:Move();
local p2 = Player:new();
p2:Move();