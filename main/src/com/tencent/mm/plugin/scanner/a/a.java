package com.tencent.mm.plugin.scanner.a;

import com.tencent.mm.sdk.platformtools.cj;
import java.util.LinkedList;
import java.util.Map;

public final class a
{
  public LinkedList cxN = new LinkedList();
  public String title;
  public int type = 1;

  public static LinkedList d(Map paramMap, String paramString)
  {
    LinkedList localLinkedList1 = new LinkedList();
    int i = 0;
    int j = 0;
    a locala;
    LinkedList localLinkedList2;
    int k;
    String str2;
    label293: label300: int m;
    if (i < 1000)
    {
      locala = new a();
      StringBuilder localStringBuilder1 = new StringBuilder().append(paramString).append(".actionlist");
      Object localObject1;
      StringBuilder localStringBuilder2;
      if (i > 0)
      {
        localObject1 = Integer.valueOf(i);
        String str1 = localObject1;
        if (!cj.hX((String)paramMap.get(str1 + ".$type")))
          locala.type = Integer.valueOf((String)paramMap.get(str1 + ".$type")).intValue();
        locala.title = cj.hW((String)paramMap.get(str1 + ".$title"));
        localLinkedList2 = new LinkedList();
        k = 0;
        if (k >= 1000)
          break label1580;
        localStringBuilder2 = new StringBuilder().append(str1).append(".action");
        if (k <= 0)
          break label293;
      }
      for (Object localObject2 = Integer.valueOf(k); ; localObject2 = "")
      {
        str2 = localObject2;
        if (!cj.hX((String)paramMap.get(str2 + ".$type")))
          break label327;
        if (j == 0)
          break label300;
        return localLinkedList1;
        localObject1 = "";
        break;
      }
      locala.cxN = localLinkedList2;
      m = 1;
    }
    while (true)
    {
      label310: localLinkedList1.add(locala);
      i++;
      j = m;
      break;
      label327: int n;
      b localb;
      try
      {
        n = Integer.valueOf((String)paramMap.get(str2 + ".$type")).intValue();
        localb = new b(n);
        localb.type = n;
        localb.eaW = cj.hW((String)paramMap.get(str2 + ".$statid"));
        if (n != 1)
          break label631;
        localb.name = cj.hW((String)paramMap.get(str2 + ".name"));
        localb.desc = cj.hW((String)paramMap.get(str2 + ".desc"));
        localb.cxM = cj.hW((String)paramMap.get(str2 + ".link"));
        if ((!cj.hX(localb.name)) || (!cj.hX(localb.cxM)))
          break label614;
        locala.cxN = localLinkedList2;
        m = 0;
      }
      catch (Exception localException)
      {
        new StringBuilder("parseVendorsFromXml() ").append(localException.getMessage()).toString();
        if (j != 0)
          return localLinkedList1;
        locala.cxN = localLinkedList2;
        m = 1;
      }
      continue;
      label614: localLinkedList2.add(localb);
      while (true)
      {
        k++;
        j = 0;
        break;
        label631: if (n == 2)
        {
          localb.username = cj.hW((String)paramMap.get(str2 + ".username"));
          localb.crH = cj.hW((String)paramMap.get(str2 + ".nickname"));
          localb.name = cj.hW((String)paramMap.get(str2 + ".name"));
          localb.desc = cj.hW((String)paramMap.get(str2 + ".desc"));
          if ((cj.hX(localb.username)) && (cj.hX(localb.name)))
          {
            locala.cxN = localLinkedList2;
            m = 0;
            break label310;
          }
          localLinkedList2.add(localb);
          continue;
        }
        if (n == 3)
        {
          localb.thumburl = cj.hW((String)paramMap.get(str2 + ".thumburl"));
          localb.cxM = cj.hW((String)paramMap.get(str2 + ".link"));
          if ((cj.hX(localb.thumburl)) && (cj.hX(localb.cxM)))
          {
            locala.cxN = localLinkedList2;
            m = 0;
            break label310;
          }
          localLinkedList2.add(localb);
          continue;
        }
        if (n == 4)
        {
          localb.thumburl = cj.hW((String)paramMap.get(str2 + ".thumburl"));
          localb.username = cj.hW((String)paramMap.get(str2 + ".username"));
          localb.crH = cj.hW((String)paramMap.get(str2 + ".nickname"));
          if (cj.hX(localb.username))
          {
            locala.cxN = localLinkedList2;
            m = 0;
            break label310;
          }
          localLinkedList2.add(localb);
          continue;
        }
        if (n == 5)
        {
          localb.name = cj.hW((String)paramMap.get(str2 + ".name"));
          localb.desc = cj.hW((String)paramMap.get(str2 + ".desc"));
          localb.eaU = cj.hW((String)paramMap.get(str2 + ".wifiurl"));
          localb.wapurl = cj.hW((String)paramMap.get(str2 + ".wapurl"));
          localb.eaV = cj.hW((String)paramMap.get(str2 + ".weburl"));
          if ((cj.hX(localb.eaU)) && (cj.hX(localb.wapurl)) && (cj.hX(localb.eaV)))
          {
            locala.cxN = localLinkedList2;
            m = 0;
            break label310;
          }
          localLinkedList2.add(localb);
          continue;
        }
        if (n == 6)
        {
          localb.name = cj.hW((String)paramMap.get(str2 + ".name"));
          localb.desc = cj.hW((String)paramMap.get(str2 + ".desc"));
          if (cj.hX(localb.name))
          {
            locala.cxN = localLinkedList2;
            m = 0;
            break label310;
          }
          localLinkedList2.add(localb);
          continue;
        }
        if (n != 7)
          break label1565;
        localb.thumburl = cj.hW((String)paramMap.get(str2 + ".thumburl"));
        localb.eaT = cj.hW((String)paramMap.get(str2 + ".playurl"));
        localLinkedList2.add(localb);
      }
      label1565: locala.cxN = localLinkedList2;
      m = 0;
      continue;
      return localLinkedList1;
      label1580: m = j;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.a.a
 * JD-Core Version:    0.6.2
 */