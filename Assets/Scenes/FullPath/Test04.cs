using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;
using System.IO;

public class Test04 : MonoBehaviour
{
    LuaEnv luaenv ;
    // Start is called before the first frame update
    void Start()
    {
        luaenv = new LuaEnv();
        luaenv.AddLoader(MyLoader);
        luaenv.DoString("require 'Lua05'");
    }

    private byte[] MyLoader(ref string filePath){
        Debug.Log(Application.streamingAssetsPath);
        string path = Application.streamingAssetsPath + "/" + filePath + ".lua.txt";
        Debug.Log(path);
        return System.Text.Encoding.UTF8.GetBytes(File.ReadAllText(path));
    }
    // Update is called once per frame
    void Update()
    {
        luaenv?.Tick();
    }

    private void OnDestroy() {
        luaenv?.Dispose();
    }
}
