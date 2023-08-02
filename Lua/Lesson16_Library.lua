print("************自带库************")
-- string
-- table
print("************时间************")
-- 系统时间
print(os.time());

print(os.time({year = 2023, month = 8, day = 1}))

-- os.date("*t");
local nowTime = os.date("*t");
for k,v in pairs(nowTime) do
	print(k,v)
end
print("************数学运算************")
-- math
print(math.abs(-11));

print(math.deg(math.pi));

print(math.cos(45))

-- 向上向下取整
print(math.floor(2.7));
print(math.ceil(2.7));

--pritn(math.modf(1.2));
print(math.modf(1.2));

math.randomseed(os.time())
print(math.random(100))
print(math.random(100))

print("************路径************")
-- lua脚本加载路径
print(package.path)


print("************垃圾回收************")
-- 垃圾回收关键字
-- collectgarbage
-- 获取当前lua占用内存数 k字节 用返回值*1024 就可以得到具体的内存占用字节数
print(collectgarbage("count") * 1024);

test = {id = 1, name = "123"};
-- lua中的机制和c#中垃圾回收机制类似 解除绑定就会变垃圾
print(collectgarbage("count"));
test = nil;
collectgarbage("collect");
print(collectgarbage("count"));

