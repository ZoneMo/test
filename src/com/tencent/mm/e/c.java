package com.tencent.mm.e;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.e;
import java.util.HashMap;
import java.util.Map;

public class c
{
  private static c cfN = null;
  private HashMap cfO = new HashMap();

  private void a(Map paramMap)
  {
    if (paramMap == null);
    int i;
    label14: Object localObject;
    label39: String str3;
    String str4;
    do
    {
      return;
      this.cfO.clear();
      i = 0;
      if (i >= 10000)
        break;
      StringBuilder localStringBuilder = new StringBuilder(".sysmsg.dynacfg.Item");
      if (i != 0)
        break label182;
      localObject = "";
      String str1 = localObject;
      String str2 = str1 + ".$key";
      str3 = (String)paramMap.get(str1);
      str4 = (String)paramMap.get(str2);
    }
    while ((str4 == null) || (cj.hX(str4.trim())));
    HashMap localHashMap = this.cfO;
    String str5 = str4.trim();
    if (str3 != null);
    for (String str6 = str3; ; str6 = "")
    {
      localHashMap.put(str5, str6);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = str4.trim();
      arrayOfObject[1] = str3;
      aa.e("MicroMsg.DynamicConfig", "put %s %s", arrayOfObject);
      i++;
      break label14;
      break;
      label182: localObject = Integer.valueOf(i);
      break label39;
    }
  }

  private void bp(String paramString)
  {
    a(u.aL(paramString, "sysmsg"));
  }

  public static c qw()
  {
    if (cfN == null);
    try
    {
      if (cfN == null)
        cfN = new c();
      return cfN;
    }
    finally
    {
    }
  }

  public final void a(String paramString, Map paramMap)
  {
    while (true)
    {
      try
      {
        boolean bool = cj.hX(paramString);
        if (bool)
          return;
        be.uz().sr().set(278529, paramString);
        if (paramMap != null)
        {
          a(paramMap);
          continue;
        }
      }
      finally
      {
      }
      bp(paramString);
    }
  }

  public final void gW()
  {
    try
    {
      bp((String)be.uz().sr().get(278529));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String getValue(String paramString)
  {
    if (this.cfO.size() == 0)
      gW();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString.trim();
    arrayOfObject[1] = this.cfO.get(paramString);
    aa.e("MicroMsg.DynamicConfig", "get configs.get(config) %s %s", arrayOfObject);
    return (String)this.cfO.get(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.e.c
 * JD-Core Version:    0.6.2
 */