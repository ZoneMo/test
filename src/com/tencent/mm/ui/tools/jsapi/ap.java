package com.tencent.mm.ui.tools.jsapi;

import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public final class ap
{
  private static String c(String paramString1, String paramString2, Map paramMap)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("__msg_type", paramString1);
      if (paramString1.equals("callback"))
        localJSONObject.put("__callback_id", paramString2);
      while (true)
      {
        localJSONObject.put("__params", s(paramMap));
        return localJSONObject.toString();
        if (paramString1.equals("event"))
          localJSONObject.put("__event_id", paramString2);
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.MsgWrapper", "build fail, exception = " + localException.getMessage());
    }
    return null;
  }

  static String h(String paramString, Map paramMap)
  {
    return c("callback", paramString, paramMap);
  }

  static String i(String paramString, Map paramMap)
  {
    return c("event", paramString, paramMap);
  }

  private static JSONObject s(Map paramMap)
  {
    if ((paramMap == null) || (paramMap.size() == 0))
      return new JSONObject();
    JSONObject localJSONObject;
    try
    {
      localJSONObject = new JSONObject();
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localJSONObject.put(str, paramMap.get(str));
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.MsgWrapper", "convertMapToJSON fail, exception = " + localException.getMessage());
      return null;
    }
    return localJSONObject;
  }

  private static ao xT(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.MsgWrapper", "fromString fail, src is null");
      return null;
    }
    ao localao = new ao();
    while (true)
    {
      String str1;
      String str2;
      try
      {
        JSONObject localJSONObject1 = new JSONObject(paramString);
        localao.type = localJSONObject1.getString("__msg_type");
        localao.hpK = localJSONObject1.getString("__callback_id");
        localao.function = localJSONObject1.getString("func");
        localao.dOk = new HashMap();
        JSONObject localJSONObject2 = localJSONObject1.getJSONObject("params");
        if (localJSONObject2 == null)
          break;
        Iterator localIterator = localJSONObject2.keys();
        if (!localIterator.hasNext())
          break;
        str1 = (String)localIterator.next();
        str2 = localJSONObject2.getString(str1);
        if (str2 == null)
          str2 = "";
        if ((str2.length() > 2) && (str2.charAt(0) == '[') && (str2.charAt(-1 + str2.length()) == ']'))
        {
          JSONArray localJSONArray = new JSONArray(str2);
          String[] arrayOfString = new String[localJSONArray.length()];
          int i = 0;
          if (i < arrayOfString.length)
          {
            arrayOfString[i] = localJSONArray.getString(i);
            i++;
            continue;
          }
          localao.dOk.put(str1, arrayOfString);
          continue;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.MsgWrapper", "fromString fail, exception = " + localException.getMessage());
        return null;
      }
      localao.dOk.put(str1, str2);
    }
    return localao;
  }

  static List xU(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      aa.e("MicroMsg.MsgWrapper", "getMsgList fail, src is null");
    LinkedList localLinkedList;
    while (true)
    {
      return null;
      try
      {
        JSONArray localJSONArray = new JSONArray(paramString);
        if (localJSONArray.length() != 0)
        {
          localLinkedList = new LinkedList();
          for (int i = 0; i < localJSONArray.length(); i++)
            localLinkedList.add(xT(localJSONArray.getString(i)));
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.MsgWrapper", "dealMsgQueue fail, exception = " + localException.getMessage());
        return null;
      }
    }
    return localLinkedList;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.ap
 * JD-Core Version:    0.6.2
 */