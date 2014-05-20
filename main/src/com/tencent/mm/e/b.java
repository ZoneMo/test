package com.tencent.mm.e;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.sdk.platformtools.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class b
{
  public static final int[] cfL = { 1 };
  private HashMap cfM = new HashMap();
  private int id;
  private int version;

  public b(int paramInt)
  {
    this.id = paramInt;
  }

  private static boolean bo(String paramString)
  {
    while (true)
    {
      int i;
      try
      {
        if (cj.hX(paramString))
          return false;
        ArrayList localArrayList = new ArrayList();
        if (!cj.hX(paramString))
        {
          String[] arrayOfString = paramString.split(",");
          if ((arrayOfString != null) && (arrayOfString.length > 0))
          {
            i = 0;
            if (i < arrayOfString.length)
            {
              if (cj.hX(arrayOfString[i]))
                break label235;
              localArrayList.add(arrayOfString[i]);
              break label235;
            }
          }
        }
        String str1 = z.azj();
        if (cj.hX(str1))
          return false;
        aa.d("MicroMsg.ConfigListInfo", "locale is " + str1);
        Iterator localIterator = localArrayList.iterator();
        if (localIterator.hasNext())
        {
          String str2 = (String)localIterator.next();
          if ((str2.trim().toLowerCase().equals("other")) && (!str1.equals("zh_CN")))
          {
            aa.d("MicroMsg.ConfigListInfo", "find other");
            return true;
          }
          if (!str2.trim().toLowerCase().equals(str1.trim().toLowerCase()))
            continue;
          aa.d("MicroMsg.ConfigListInfo", "find ");
          return true;
        }
      }
      catch (Exception localException)
      {
        aa.d("MicroMsg.ConfigListInfo", "isContainLocale failed " + localException.getMessage());
      }
      return false;
      label235: i++;
    }
  }

  public final void bn(String paramString)
  {
    Map localMap = u.aL(paramString, "ConfigList");
    if (localMap.containsKey(".ConfigList.$version"))
      this.version = Integer.valueOf((String)localMap.get(".ConfigList.$version")).intValue();
    label135: label163: label203: label465: label475: for (int i = 0; ; i++)
    {
      StringBuilder localStringBuilder1 = new StringBuilder(".ConfigList.Config");
      Object localObject1;
      String str2;
      int j;
      Object localObject2;
      String str3;
      Object localObject3;
      String str4;
      StringBuilder localStringBuilder4;
      if (i == 0)
      {
        localObject1 = "";
        String str1 = localObject1;
        if (localMap.get(str1 + ".$name") == null)
          break;
        str2 = (String)localMap.get(str1 + ".$name");
        j = 0;
        StringBuilder localStringBuilder2 = new StringBuilder().append(str1).append(".Item");
        if (j != 0)
          break label445;
        localObject2 = "";
        str3 = localObject2;
        StringBuilder localStringBuilder3 = new StringBuilder().append(str1).append(".Item");
        if (j != 0)
          break label455;
        localObject3 = "";
        str4 = localObject3 + ".$key";
        localStringBuilder4 = new StringBuilder().append(str1).append(".Item");
        if (j != 0)
          break label465;
      }
      for (Object localObject4 = ""; ; localObject4 = Integer.valueOf(j))
      {
        String str5 = localObject4 + ".$lang";
        if ((localMap.get(str3) == null) || (localMap.get(str3) == null))
          break label475;
        String str6 = (String)localMap.get(str4);
        String str7 = (String)localMap.get(str3);
        String str8 = (String)localMap.get(str5);
        aa.d("MicroMsg.ConfigListInfo", "itemKey " + str6 + " itemValue " + str7 + " itemLang " + str8);
        if ((str8 == null) || (bo(str8)))
        {
          if (!this.cfM.containsKey(str2))
            this.cfM.put(str2, new HashMap());
          ((HashMap)this.cfM.get(str2)).put(str6, str7);
        }
        j++;
        break label135;
        localObject1 = Integer.valueOf(i);
        break;
        localObject2 = Integer.valueOf(j);
        break label163;
        localObject3 = Integer.valueOf(j);
        break label203;
      }
    }
    label445: label455: return;
  }

  public final String o(String paramString1, String paramString2)
  {
    if (this.cfM.containsKey(paramString1))
      return (String)((HashMap)this.cfM.get(paramString1)).get(paramString2);
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.e.b
 * JD-Core Version:    0.6.2
 */