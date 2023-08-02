print("************协同程序************")
print("************协程的创建************")
-- coroutine.create() 第一种方法
fun = function ( ... )
	-- body
	print(123);
end
co = coroutine.create(fun);
-- 协程的本质是一个线程对象
print(co);
print(type(co));

-- coroutine.weap() 第二种方法
co2 = coroutine.wrap(fun);
print(co2);
print(type(co2));

print("************协程的运行************")
-- 第一中方式 对应的是通过create创建的协程
coroutine.resume(co);
-- 第二种方式 
co2();

print("************协程的挂起************")
fun2 = function ( ... )
	-- body
	local i = 1;
	while true do
		print(i);
		i = i +1;
		-- 可以返回值 默认第一个值是 协程是否成功启动
		coroutine.yield(i);
	end
end

co3 = coroutine.create(fun2);
isok, tempI = coroutine.resume(co3);
print(isok)
coroutine.resume(co3);
print("=====")

co4 = coroutine.wrap(fun2);
-- 此方式调用 直接返回值， 没有默认的返回值
co4();
co4();
co4();

print("************协程的状态************")
-- coroutine.status(协程对象)
-- dead 结束
-- suspended 暂停
-- running 进行中
print(coroutine.status(co));
print(coroutine.status(co3));

print(coroutine.running(co));