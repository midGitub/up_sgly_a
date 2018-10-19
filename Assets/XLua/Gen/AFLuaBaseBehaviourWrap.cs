#if USE_UNI_LUA
using LuaAPI = UniLua.Lua;
using RealStatePtr = UniLua.ILuaState;
using LuaCSFunction = UniLua.CSharpFunctionDelegate;
#else
using LuaAPI = XLua.LuaDLL.Lua;
using RealStatePtr = System.IntPtr;
using LuaCSFunction = XLua.LuaDLL.lua_CSFunction;
#endif

using XLua;
using System.Collections.Generic;


namespace XLua.CSObjectWrap
{
    using Utils = XLua.Utils;
    public class AFLuaBaseBehaviourWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(AF.LuaBaseBehaviour);
			Utils.BeginObjectRegister(type, L, translator, 0, 2, 6, 6);
			
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "GetLuaTable", _m_GetLuaTable);
			Utils.RegisterFunc(L, Utils.METHOD_IDX, "SetUpLua", _m_SetUpLua);
			
			
			Utils.RegisterFunc(L, Utils.GETTER_IDX, "m_luaScriptPath", _g_get_m_luaScriptPath);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "m_injectionObjs", _g_get_m_injectionObjs);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "m_injectionStrings", _g_get_m_injectionStrings);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "m_injectionInts", _g_get_m_injectionInts);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "m_injectionFloats", _g_get_m_injectionFloats);
            Utils.RegisterFunc(L, Utils.GETTER_IDX, "m_injectionBools", _g_get_m_injectionBools);
            
			Utils.RegisterFunc(L, Utils.SETTER_IDX, "m_luaScriptPath", _s_set_m_luaScriptPath);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "m_injectionObjs", _s_set_m_injectionObjs);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "m_injectionStrings", _s_set_m_injectionStrings);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "m_injectionInts", _s_set_m_injectionInts);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "m_injectionFloats", _s_set_m_injectionFloats);
            Utils.RegisterFunc(L, Utils.SETTER_IDX, "m_injectionBools", _s_set_m_injectionBools);
            
			
			Utils.EndObjectRegister(type, L, translator, null, null,
			    null, null, null);

		    Utils.BeginClassRegister(type, L, __CreateInstance, 1, 0, 0);
			
			
            
			
			
			
			Utils.EndClassRegister(type, L, translator);
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CreateInstance(RealStatePtr L)
        {
            
			try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
				if(LuaAPI.lua_gettop(L) == 1)
				{
					
					AF.LuaBaseBehaviour __cl_gen_ret = new AF.LuaBaseBehaviour();
					translator.Push(L, __cl_gen_ret);
                    
					return 1;
				}
				
			}
			catch(System.Exception __gen_e) {
				return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
			}
            return LuaAPI.luaL_error(L, "invalid arguments to AF.LuaBaseBehaviour constructor!");
            
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetLuaTable(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    
                        XLua.LuaTable __cl_gen_ret = __cl_gen_to_be_invoked.GetLuaTable(  );
                        translator.Push(L, __cl_gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_SetUpLua(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
            
            
                
                {
                    string luaScriptPath = LuaAPI.lua_tostring(L, 2);
                    
                    __cl_gen_to_be_invoked.SetUpLua( luaScriptPath );
                    
                    
                    
                    return 0;
                }
                
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            
        }
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_m_luaScriptPath(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
                LuaAPI.lua_pushstring(L, __cl_gen_to_be_invoked.m_luaScriptPath);
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_m_injectionObjs(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
                translator.Push(L, __cl_gen_to_be_invoked.m_injectionObjs);
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_m_injectionStrings(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
                translator.Push(L, __cl_gen_to_be_invoked.m_injectionStrings);
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_m_injectionInts(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
                translator.Push(L, __cl_gen_to_be_invoked.m_injectionInts);
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_m_injectionFloats(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
                translator.Push(L, __cl_gen_to_be_invoked.m_injectionFloats);
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_m_injectionBools(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
                translator.Push(L, __cl_gen_to_be_invoked.m_injectionBools);
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            return 1;
        }
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_m_luaScriptPath(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
                __cl_gen_to_be_invoked.m_luaScriptPath = LuaAPI.lua_tostring(L, 2);
            
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_m_injectionObjs(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
                __cl_gen_to_be_invoked.m_injectionObjs = (AF.LuaInjectionObj[])translator.GetObject(L, 2, typeof(AF.LuaInjectionObj[]));
            
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_m_injectionStrings(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
                __cl_gen_to_be_invoked.m_injectionStrings = (AF.LuaInjectionString[])translator.GetObject(L, 2, typeof(AF.LuaInjectionString[]));
            
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_m_injectionInts(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
                __cl_gen_to_be_invoked.m_injectionInts = (AF.LuaInjectionInt[])translator.GetObject(L, 2, typeof(AF.LuaInjectionInt[]));
            
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_m_injectionFloats(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
                __cl_gen_to_be_invoked.m_injectionFloats = (AF.LuaInjectionFloat[])translator.GetObject(L, 2, typeof(AF.LuaInjectionFloat[]));
            
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_m_injectionBools(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			
                AF.LuaBaseBehaviour __cl_gen_to_be_invoked = (AF.LuaBaseBehaviour)translator.FastGetCSObj(L, 1);
                __cl_gen_to_be_invoked.m_injectionBools = (AF.LuaInjectionBool[])translator.GetObject(L, 2, typeof(AF.LuaInjectionBool[]));
            
            } catch(System.Exception __gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + __gen_e);
            }
            return 0;
        }
        
		
		
		
		
    }
}
