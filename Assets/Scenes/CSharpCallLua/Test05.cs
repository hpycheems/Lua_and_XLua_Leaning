using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;
using System;

[CSharpCallLua]
public class Test05 : MonoBehaviour
{
    LuaEnv luaenv;
    // Start is called before the first frame update
    void Start()
    {
        luaenv = new LuaEnv();
        luaenv.DoString("require 'Lua05'");

        Debug.Log( luaenv.Global.Get<int>("a"));
        Debug.Log( luaenv.Global.Get<string>("str"));
        Debug.Log( luaenv.Global.Get<bool>("isRun"));

        Student student = luaenv.Global.Get<Student>("student");
        Debug.Log(student.name);
        Debug.Log(student.age);

        IStudent istuent = luaenv.Global.Get<IStudent>("student");
        Debug.Log(istuent.name);
        Debug.Log(istuent.age);
        istuent.study();

        Dictionary<string, string> dict = luaenv.Global.Get<Dictionary<string, string>>("student");
        Debug.Log(dict["name"]);
        Debug.Log(dict["age"]);

        List<double> lists = luaenv.Global.Get<List<double>>("d");// 此方法只会得到lua中的 数值例如 1，2，3等
        Debug.Log(lists.Count);

        LuaTable table = luaenv.Global.Get<LuaTable>("student");// 此用法效率低 但不用生成代码
        Debug.Log(table.Get<string>("name"));
        Debug.Log(table.Get<string>("age"));
        

        Action e = luaenv.Global.Get<Action>("fun");
        e();

        int numa, numb, numc;
        Func1Delegate fun1 = luaenv.Global.Get<Func1Delegate>("fun1");
        fun1(out numa,out numb,out numc);
        Debug.Log(numa+ " "+ numc + " " + numb);

        GetFun getFun = luaenv.Global.Get<GetFun>("fun2");// 可以返回复杂类型
        Action fun001 = getFun();
        fun001();

        LuaFunction fun33 = luaenv.Global.Get<LuaFunction>("fun2");
        fun33.Call();
    }

    // Update is called once per frame
    void Update()
    {
        luaenv?.Tick();
    }
    private void OnDestroy() {
        luaenv?.Dispose();
    }

    class Student{
        public string name;
        public string age;
    }
}

[CSharpCallLua]
public delegate void Func1Delegate(out int a, out int b, out int c);
[CSharpCallLua]
public delegate Action GetFun();

[CSharpCallLua]
public interface IStudent{
    string name{get;set;}
    string age{get;set;}
    void study();

}
