print("*********表table************")
-- 所有的复杂类型 本质 都是table
print("*********数组************")
a = {1,2,3,4, nil, true, "12345"};
-- lua 中索引从1开始
print(a[1]);
print(a[2]);
print(a[3]);
print(a[4]);
print(a[5]);
print(a[6]);
print(a[7]);
-- #是通用的获取长度的关键字
print("===")
print(#a);

print("*********数组的遍历************")
for i=1,#a do
	print(a[i]);
end

print("*********二维数组************")
b = {{1,2,3},
	{4,5,6}};
print(b[1][1]);
print(b[1][2]);
print(b[1][3]);
print(b[2][1]);
print(b[2][2]);
print(b[2][3]);

print("*********二维数组的遍历************")
for i=1,#b do
	c = b[i];
	for j=1,#c do
		print(c[j]);
	end
end

print("*********自定义索引************")
d = {[0] = 1, 1,[-1] = 4, 2, 3};
print(d[-1]);
print(#d);-- 获取的长度是从小标为1开始计算的。

aa = {[1] = 1, [2] = 2, [5] = 4, [6] = 6};
print(#aa);-- 中间断了一个数 得到的长度是最大的索引值
