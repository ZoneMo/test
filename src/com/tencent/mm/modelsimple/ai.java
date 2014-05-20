package com.tencent.mm.modelsimple;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.LinkedList;
import java.util.Map;

public final class ai
{
  public LinkedList cxN;
  public String desc;
  public String title;

  private static LinkedList b(Map paramMap, String paramString)
  {
    LinkedList localLinkedList = new LinkedList();
    for (int i = 0; i < 1000; i++)
    {
      StringBuilder localStringBuilder = new StringBuilder().append(paramString).append(".action");
      Object localObject;
      if (i > 0)
        localObject = Integer.valueOf(i);
      ah localah;
      while (true)
      {
        String str = localObject;
        try
        {
          int j = Integer.valueOf((String)paramMap.get(str + ".$type")).intValue();
          localah = new ah();
          if (j == 5)
          {
            localah.cxL = cj.hW((String)paramMap.get(str + ".iconurl"));
            localah.desc = cj.hW((String)paramMap.get(str + ".desc"));
            localah.cxM = cj.hW((String)paramMap.get(str + ".link"));
            if ((!cj.hX(localah.cxL)) || (!cj.hX(localah.desc)) || (!cj.hX(localah.cxM)))
              break label293;
            return localLinkedList;
            localObject = "";
          }
        }
        catch (Exception localException)
        {
          aa.w("MicroMsg.NetSceneScanStreetView", "parseVendorsFromXml() " + localException.getMessage());
          return localLinkedList;
        }
      }
      return localLinkedList;
      label293: localLinkedList.add(localah);
    }
    return localLinkedList;
  }

  public static ai gt(String paramString)
  {
    if (paramString == null);
    Map localMap;
    LinkedList localLinkedList;
    do
    {
      do
      {
        return null;
        localMap = u.aL(paramString, "recommend");
      }
      while (localMap == null);
      localLinkedList = b(localMap, ".recommend");
    }
    while (localLinkedList == null);
    ai localai = new ai();
    localai.title = cj.hW((String)localMap.get(".recommend.title"));
    localai.desc = cj.hW((String)localMap.get(".recommend.desc"));
    localai.cxN = localLinkedList;
    return localai;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.ai
 * JD-Core Version:    0.6.2
 */