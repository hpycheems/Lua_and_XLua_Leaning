print("*********函数************")
-- function 函数名()
-- end

-- a = function()
-- end
print("*********无参数无返回值************")
function F1( ... )
	print("函数2");
end
F1();

a = function()
	print("函数1");
end
a();
print("*********有参数************")
function F3( a )
	-- body
	print(a);
end
F3(true);
F3();
-- 可以不传参， 或传多参
F3(1, 2, 3);

print("*********有返回值************")
function F4(a)
	return a, "321", false;
end
temp = F4("321");
print(temp);
-- 多返回值
temp2, temp3, temp4 = F4("123");
print(temp1);
print(temp3);
print(temp2);

print("*********函数的类型************")
-- 函数类型就是function
F5 = function (  )
	-- body
	print("123");
end
print(F5);

print("*********函数的重载************")
-- 函数名相同 参数类型不同 或个数不同
function F6()
	print("~~~")
end
function F6()
	print("!!!")
end
-- lua中函数不支持重载 默认使用最后的函数声明
F6();

print("*********变长参数************")
function F7( ... )
	-- 变长参数使用 一个表存储起来 才可使用
	array = {...}
	for i=1,#array do
		print(array[i]);
	end
end
F7(1, "123", false);

print("*********函数嵌套************")
function F9( ... )
	-- body
	return function ( ... )
		-- body
		print(321);
	end
end
f9 = F9();
f9();

-- 闭包 在函数中 返回函数
function F9( x )
	-- body 改变传入参数的生命周期 
	return function( y )
		-- body
		return x + y;
	end
end

f10 = F9(10);
print(f10(5));

