print("=======条件分支=========");
a = 9;
-- 单 if 条件 then...end
if a > 5 then
	print("123");
end

-- 双 if 条件 then else end
if(a > 9) then
	print("123");
else
	print("321");
end

-- 多分支 if 条件 then.. elseif 条件 else。... end
if(a == 1)then
	print("123");
elseif(a == 3)then
	print("123");
elseif(a == 9)then
	print("5555");
else
	print("123");
end

-- lua中没有switch
