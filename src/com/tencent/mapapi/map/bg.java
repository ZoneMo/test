package com.tencent.mapapi.map;

import java.util.List;

final class bg
  implements x
{
  bg(be parambe)
  {
  }

  public final void lX()
  {
    int i = 0;
    if (be.a(this.WU) == null);
    while ((be.a(this.WU).WX == null) || (be.a(this.WU).WX.Ua == null))
      return;
    if (be.a(this.WU).WX.Ub != null);
    while (true)
    {
      synchronized (be.a(this.WU).WX.Xe)
      {
        if (be.a(this.WU).WX.Ub.size() <= 0)
          break label403;
        localav = (av)be.a(this.WU).WX.Ub.remove(0);
        if ((localav != null) && (bq.VK != br.XG))
        {
          Boolean localBoolean = localav.mJ();
          if (localBoolean == null)
            localBoolean = Boolean.valueOf(false);
          if (localBoolean.booleanValue())
            break label281;
        }
      }
      int j;
      while (true)
      {
        synchronized (be.a(this.WU).WX.Xe)
        {
          be.a(this.WU).WX.Ub.add(localav);
          this.WU.bb(1);
          synchronized (be.a(this.WU).WX.Xd)
          {
            j = be.a(this.WU).WX.Ua.size();
            if (j > 0)
              break;
            return;
          }
          localObject3 = finally;
          throw localObject3;
        }
        label281: localav.me();
      }
      while (i < j)
      {
        synchronized (be.a(this.WU).WX.Xd)
        {
          if (be.a(this.WU).WX.Ua.size() != j)
          {
            this.WU.bb(1);
            return;
          }
        }
        ba localba = (ba)be.a(this.WU).WX.Ua.get(i);
        if (localba != null)
          localba.kY();
        i++;
      }
      break;
      label403: av localav = null;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.bg
 * JD-Core Version:    0.6.2
 */