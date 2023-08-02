print("=======循环语句=========");
print("=======while语句=========");
num = 0;
-- while 条件 do ... end
while(num < 5) do
	print(num);
	num = num + 1;
end
print("=======do while语句=========");
num = 0;
-- repeat ..... until 条件 (条件是结束条件)
repeat
	print(num);
	num = num + 1;
until (num > 5);

print("=======for循环=========");
for i=1,5 do
	print(i)
end
print("=======");
for i=1,5,2 do
	print(i)
end
print("=======");
for i=5,1,-1 do
	print(i)
end

