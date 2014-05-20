package com.tencent.mm.plugin.search.model;

import com.tencent.mm.model.be;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

final class x extends af
{
  private int mCount = 0;

  private x(b paramb)
  {
  }

  public final boolean execute()
  {
    Iterator localIterator1 = b.b(this.egV).entrySet().iterator();
    int i = 50;
    if (localIterator1.hasNext())
    {
      if (Thread.interrupted())
      {
        b.a(this.egV).commit();
        throw new InterruptedException();
      }
      if (i < 50)
        break label253;
      b.a(this.egV).commit();
      b.a(this.egV).beginTransaction();
    }
    label253: for (int j = 0; ; j = i)
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      Iterator localIterator2 = ((List)localEntry.getValue()).iterator();
      while (localIterator2.hasNext())
      {
        long l = ((Long)localIterator2.next()).longValue();
        b.a(this.egV).aE(l);
        j++;
      }
      String str = (String)localEntry.getKey();
      i locali = be.uz().su().tN(str);
      if ((locali != null) && (locali.getUsername().length() > 0) && (b.a(locali)));
      for (i = j + b.a(this.egV, locali); ; i = j)
      {
        localIterator1.remove();
        this.mCount = (1 + this.mCount);
        break;
        b.a(this.egV).commit();
        return true;
      }
    }
  }

  public final String toString()
  {
    return "UpdateDirtyContact [" + this.mCount + "]";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.x
 * JD-Core Version:    0.6.2
 */