package com.tencent.mm.al;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.ct;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class a
{
  private static final Map fxh = new HashMap();

  public static String avs()
  {
    StringBuilder localStringBuilder1 = new StringBuilder("[a=");
    if (be.uz() == null);
    String str2;
    for (String str1 = "0"; ; str1 = "1")
    {
      str2 = str1 + " ";
      if (be.uz() != null)
        break;
      return str2;
    }
    StringBuilder localStringBuilder2 = new StringBuilder().append(str2).append("c=");
    String str3;
    StringBuilder localStringBuilder3;
    if (be.uz().sr() == null)
    {
      str3 = "0";
      String str4 = str3 + " ";
      localStringBuilder3 = new StringBuilder().append(str4).append("u=");
      if (!be.se())
        break label145;
    }
    label145: for (String str5 = "1"; ; str5 = "0")
    {
      return str5 + "]";
      str3 = "1";
      break;
    }
  }

  public static void le(int paramInt)
  {
    int i = 1 + cj.c((Integer)fxh.get(Integer.valueOf(paramInt)));
    fxh.put(Integer.valueOf(paramInt), Integer.valueOf(i));
  }

  public static void rp(String paramString)
  {
    String str1 = paramString + avs();
    Iterator localIterator = fxh.entrySet().iterator();
    StringBuilder localStringBuilder = new StringBuilder();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if ((localEntry != null) && (localEntry.getKey() != null) && (localEntry.getValue() != null) && (((Integer)localEntry.getValue()).intValue() != 0))
      {
        localStringBuilder.append(localEntry.getKey());
        localStringBuilder.append('=');
        localStringBuilder.append(localEntry.getValue());
        localStringBuilder.append(',');
      }
    }
    fxh.clear();
    if (localStringBuilder.length() > 0)
    {
      aa.d("MicroMsg.PostTaskFMessageCardStat", "append fmesage card click");
      ct.e(10, localStringBuilder.toString());
    }
    String str2 = str1 + avs();
    aa.d("MicroMsg.PostTaskFMessageCardStat", "dkfm :" + str2);
    try
    {
      be.uz().sr().set(66819, Long.valueOf(cj.FC()));
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.PostTaskFMessageCardStat", "e:" + localException.getMessage());
    }
  }

  public static void run()
  {
    if (1000L * cj.M(cj.a((Long)be.uz().sr().get(66819), 0L)) > 1800000L);
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
        rp("");
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.al.a
 * JD-Core Version:    0.6.2
 */