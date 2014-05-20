package com.tencent.mm.model;

import com.tencent.mm.storage.aj;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cb;
import com.tencent.mm.storage.cc;
import java.util.List;

public final class ae
{
  public static aj dm(String paramString)
  {
    return new aj("@black.android", null, paramString, null, true, true);
  }

  public static aj dn(String paramString)
  {
    ca localca = be.uz().sz().vB("@t.qq.com");
    if (localca == null)
      return null;
    return new aj("@t.qq.com", null, paramString, null, localca.aBS(), localca.aDi());
  }

  public static aj r(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() <= 0));
    ca localca;
    do
    {
      return null;
      localca = be.uz().sz().vB(paramString1);
    }
    while ((localca == null) || (!localca.aDj()));
    String str1 = localca.getName();
    String str2 = localca.aDk().vA("");
    String str3 = "";
    if (str2 != null)
      str3 = str3 + str2.replace("@", "");
    if (paramString2 != null)
      str3 = str3 + paramString2;
    return new aj("@domain.android", str1, str3, localca.aDk().vA(""), localca.aBS(), true);
  }

  public static boolean tW()
  {
    List localList = be.uz().sz().aDl();
    if ((localList == null) || (localList.size() <= 0));
    while (true)
    {
      return false;
      for (int i = 0; i < localList.size(); i++)
        if (((ca)localList.get(i)).aBS())
          return true;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.ae
 * JD-Core Version:    0.6.2
 */