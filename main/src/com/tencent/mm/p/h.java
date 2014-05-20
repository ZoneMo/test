package com.tencent.mm.p;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class h
{
  public static String cnD = "menu_click";
  public static String cnE = "menu_action_start";
  public static String cnF = "menu_action_success";
  public String cnG;
  public List cnH = null;
  public String cnI;
  public int cnJ;
  public String content;
  public int id;
  public String name;
  public int type;
  public String value;

  public static List b(JSONArray paramJSONArray)
  {
    aa.v("MicroMsg.BizInfo", "menuItem.jsonArray : " + paramJSONArray);
    if (paramJSONArray != null);
    try
    {
      ArrayList localArrayList = new ArrayList();
      int i = paramJSONArray.length();
      aa.v("MicroMsg.BizInfo", "menuItem.jsonArray.length : " + i);
      int j = 0;
      while (j < i)
      {
        JSONObject localJSONObject = paramJSONArray.getJSONObject(j);
        h localh = new h();
        localh.id = localJSONObject.getInt("id");
        aa.d("MicroMsg.BizInfo", "menuItem.id : " + localh.id);
        localh.type = localJSONObject.getInt("type");
        aa.d("MicroMsg.BizInfo", "menuItem.type : " + localh.type);
        localh.name = localJSONObject.getString("name");
        aa.d("MicroMsg.BizInfo", "menuItem.name : " + localh.name);
        localh.cnG = localJSONObject.getString("key");
        aa.d("MicroMsg.BizInfo", "menuItem.key : " + localh.cnG);
        localh.value = localJSONObject.optString("value");
        aa.d("MicroMsg.BizInfo", "menuItem.value : " + localh.value);
        localh.cnH = b(localJSONObject.optJSONArray("sub_button_list"));
        localh.cnJ = localJSONObject.optInt("acttype");
        aa.d("MicroMsg.BizInfo", "menuItem.acttype : " + localh.cnJ);
        localArrayList.add(localh);
        j++;
        continue;
        localArrayList = null;
      }
      return localArrayList;
    }
    catch (JSONException localJSONException)
    {
    }
    return null;
  }

  public static LinkedList d(Map paramMap)
  {
    int i = 0;
    if (paramMap == null)
      return null;
    int j = cj.getInt((String)paramMap.get(".msg.appmsg.buttonlist.$count"), 0);
    if (j > 0)
      try
      {
        LinkedList localLinkedList = new LinkedList();
        aa.v("MicroMsg.BizInfo", "menuItem.jsonArray.length : " + j);
        if (i < j)
        {
          h localh = new h();
          StringBuilder localStringBuilder = new StringBuilder(".msg.appmsg.buttonlist.button");
          if (i == 0);
          String str1;
          for (Object localObject = ""; ; localObject = str1)
          {
            String str2 = (String)localObject;
            localh.id = cj.getInt((String)paramMap.get(str2 + ".id"), 0);
            localh.type = cj.getInt((String)paramMap.get(str2 + ".type"), 0);
            localh.name = ((String)paramMap.get(str2 + ".name"));
            localh.cnG = ((String)paramMap.get(str2 + ".key"));
            localh.value = ((String)paramMap.get(str2 + ".value"));
            localh.cnJ = cj.getInt((String)paramMap.get(str2 + ".acttype"), 0);
            localLinkedList.add(localh);
            i++;
            break;
            str1 = String.valueOf(i);
          }
        }
        return localLinkedList;
      }
      catch (Exception localException)
      {
        return null;
      }
    return null;
  }

  public final void D(String paramString1, String paramString2)
  {
    aa.f("MicroMsg.BizInfo", "type is %s , result is %s", new Object[] { paramString1, paramString2 });
    try
    {
      JSONObject localJSONObject1 = new JSONObject();
      localJSONObject1.put("scan_type", paramString1);
      localJSONObject1.put("scan_result", paramString2);
      JSONObject localJSONObject2 = new JSONObject();
      localJSONObject2.put("scan_code", localJSONObject1);
      this.content = localJSONObject2.toString();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.content;
      aa.f("MicroMsg.BizInfo", "content: %s", arrayOfObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      aa.e("MicroMsg.BizInfo", localJSONException.toString());
    }
  }

  public final void a(double paramDouble1, double paramDouble2, int paramInt, String paramString1, String paramString2)
  {
    try
    {
      JSONObject localJSONObject1 = new JSONObject();
      localJSONObject1.put("x", String.valueOf(paramDouble1));
      localJSONObject1.put("y", String.valueOf(paramDouble2));
      localJSONObject1.put("scale", paramInt);
      localJSONObject1.put("label", paramString1);
      localJSONObject1.put("poiname", paramString2);
      JSONObject localJSONObject2 = new JSONObject();
      localJSONObject2.put("location", localJSONObject1);
      this.content = localJSONObject2.toString();
      aa.v("MicroMsg.BizInfo", this.content);
      return;
    }
    catch (JSONException localJSONException)
    {
      aa.e("MicroMsg.BizInfo", localJSONException.toString());
    }
  }

  public final void d(ArrayList paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0))
    {
      aa.e("MicroMsg.BizInfo", "value null!");
      return;
    }
    JSONArray localJSONArray;
    try
    {
      localJSONArray = new JSONArray();
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        JSONObject localJSONObject2 = new JSONObject();
        localJSONObject2.put("pic_md5", str);
        localJSONArray.put(localJSONObject2);
      }
    }
    catch (JSONException localJSONException)
    {
      aa.e("MicroMsg.BizInfo", localJSONException.toString());
      return;
    }
    JSONObject localJSONObject1 = new JSONObject();
    localJSONObject1.put("pics", localJSONArray);
    this.content = localJSONObject1.toString();
    aa.v("MicroMsg.BizInfo", this.content);
  }

  public final String getInfo()
  {
    if (this.content == null)
      this.content = "";
    if (this.cnI == null)
      if (this.type != 4)
        break label85;
    label85: for (this.cnI = cnE; ; this.cnI = cnD)
    {
      Object[] arrayOfObject = new Object[5];
      arrayOfObject[0] = "#bizmenu#";
      arrayOfObject[1] = Integer.valueOf(this.id);
      arrayOfObject[2] = this.cnG;
      arrayOfObject[3] = this.cnI;
      arrayOfObject[4] = this.content;
      return String.format("%s<info><id><![CDATA[%d]]></id><key><![CDATA[%s]]></key><status><![CDATA[%s]]></status><content><![CDATA[%s]]></content></info>", arrayOfObject);
    }
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = Integer.valueOf(this.id);
    arrayOfObject[1] = Integer.valueOf(this.cnJ);
    arrayOfObject[2] = Integer.valueOf(this.type);
    String str1;
    String str2;
    label60: String str3;
    if (this.name == null)
    {
      str1 = "";
      arrayOfObject[3] = str1;
      if (this.cnG != null)
        break label113;
      str2 = "";
      arrayOfObject[4] = str2;
      if (this.value != null)
        break label121;
      str3 = "";
      label75: arrayOfObject[5] = str3;
      if (this.content != null)
        break label130;
    }
    label130: for (String str4 = ""; ; str4 = this.content)
    {
      arrayOfObject[6] = str4;
      return String.format("id:%d, type:%d, acttype:%s, name:%s, key:%s, value:%s, content:%s", arrayOfObject);
      str1 = this.name;
      break;
      label113: str2 = this.cnG;
      break label60;
      label121: str3 = this.value;
      break label75;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.h
 * JD-Core Version:    0.6.2
 */