using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

public class Test : MonoBehaviour
{
    LuaEnv luaenv;
    // Start is called before the first frame update
    void Start()
    {
        luaenv = new XLua.LuaEnv();
        luaenv.DoString("CS.UnityEngine.Debug.Log('hello world')");
        luaenv.DoString("print('Hello World!')");
    }

    private void OnDestroy() {
        luaenv.Dispose();
    }
}
