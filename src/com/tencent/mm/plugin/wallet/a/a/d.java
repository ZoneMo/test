package com.tencent.mm.plugin.wallet.a.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class d
{
  Map eZL = new HashMap();

  d()
  {
  }

  d(String paramString, e parame)
  {
    this.eZL.clear();
    this.eZL.put(paramString, parame);
  }

  public final ArrayList aj(List paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      e locale = (e)this.eZL.get(str);
      if (locale != null)
        localArrayList.add(locale.csU);
    }
    return localArrayList;
  }

  public final List anu()
  {
    return new ArrayList(this.eZL.keySet());
  }

  public final List anv()
  {
    return new ArrayList(this.eZL.values());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.a.a.d
 * JD-Core Version:    0.6.2
 */