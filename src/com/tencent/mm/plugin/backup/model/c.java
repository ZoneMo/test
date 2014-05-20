package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class c
{
  StringBuffer cJM = new StringBuffer();

  public final void T(String paramString1, String paramString2)
  {
    ij(paramString1);
    if (cj.hX(paramString2));
    while (true)
    {
      ik(paramString1);
      return;
      if (paramString2.contains(a.cJH))
        this.cJM.append("<![CDATA[" + cj.sS(paramString2) + "]]>");
      else
        this.cJM.append("<![CDATA[" + paramString2 + "]]>");
    }
  }

  public final void c(String paramString, Map paramMap)
  {
    this.cJM.append("<" + paramString);
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      String str2 = (String)paramMap.get(str1);
      this.cJM.append(" " + str1 + " =  \"" + str2 + "\" ");
    }
    this.cJM.append(">");
    paramMap.clear();
  }

  public final void ij(String paramString)
  {
    this.cJM.append("<" + paramString + ">");
  }

  public final void ik(String paramString)
  {
    this.cJM.append("</" + paramString + ">");
  }

  public final void y(String paramString, int paramInt)
  {
    ij(paramString);
    this.cJM.append(paramInt);
    ik(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.c
 * JD-Core Version:    0.6.2
 */