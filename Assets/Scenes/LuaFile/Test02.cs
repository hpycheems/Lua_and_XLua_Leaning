using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

public class Test02 : MonoBehaviour
{
    LuaEnv luaenv;
    // Start is called before the first frame update
    void Start()
    {
        luaenv = new LuaEnv();

        //TextAsset txt = Resources.Load<TextAsset>("Lua01");
        //Debug.Log(txt);

        luaenv.DoString("require 'Lua01'");
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    private void OnDestroy() {
        luaenv.Dispose();
    }
}
