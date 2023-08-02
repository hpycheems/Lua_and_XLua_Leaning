print("*********迭代器遍历************")
-- 迭代器遍历 主要用来遍历表

a = {1, 2, 3, [5] = 4};

print("*********ipairs迭代器遍历************")
-- ipairs
-- ipairs遍历 还是 从1开始往后遍历的 小于等于0的值得不到
-- 只能找打连续索引的 键 如果中间断续 则部分遍历出后面的值
for i,v in ipairs(a) do
	print("ipairs遍历键值"..i.."_"..v);
end

for i=1,#a do
	print(a[i]);
end

print("*********pairs迭代器遍历************")
-- 能够把所有的键都找到 通过键可以得到值
for k,v in pairs(a) do
	print("pairs遍历键值"..k,v);
end

print("*********pairs迭代器遍历键************")
for k in pairs(a) do
	print("pairs遍历键键"..k);
end

print("*********pairs迭代器遍历值************")
for k,v in pairs(a) do
	print("pairs遍历键值"..v);
end
