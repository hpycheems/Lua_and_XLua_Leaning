-- 面向对象实现
-- 万物之父

-- 封装
Object = {};
function Object:new()
	local obj = {}
	self.__index = self;
	setmetatable(obj, self);
	return obj;
end

-- 继承
function Object:subClass(className)
	-- body
	_G[className] = {};
	local obj = _G[className];

	obj.base = self;
	self.__index = self;
	setmetatable(obj, self);
end

Object:subClass("GameObject");
GameObject.posX = 0;
GameObject.posY = 0;
function GameObject:Move()
	-- body
	self.posX = self.posX + 1;
	self.posY = self.posY + 1;
end

local p1 = GameObject:new();
print(p1.posX);
p1:Move();
print(p1.posX);

GameObject:subClass("Player");
function Player:Move()
	-- body
	self.base.Move(self);
end

local p2 = Player:new();
p2:Move();
print(p2.posX);
