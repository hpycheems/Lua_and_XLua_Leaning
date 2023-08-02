using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

public class Test03 : MonoBehaviour
{
    LuaEnv luaenv;
    // Start is called before the first frame update
    void Start()
    {
        luaenv = new LuaEnv();
        luaenv.AddLoader((ref string fileName) => {
            TextAsset txt = Resources.Load<TextAsset>(fileName + ".lua");
            if(txt == null){
                string script = string.Format("print('not find file:{0}')", fileName);
                return System.Text.Encoding.UTF8.GetBytes(script);
            }
            return System.Text.Encoding.UTF8.GetBytes(txt.text);
        });


        luaenv.DoString("require 'Lua01'");
    }

    // Update is called once per frame
    void Update()
    {
        if(luaenv != null){
            luaenv.Tick();
        }
    }
    private void OnDestroy() {
        luaenv.Dispose();
    }
}
