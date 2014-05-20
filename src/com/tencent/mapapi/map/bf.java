package com.tencent.mapapi.map;

import java.util.List;

final class bf
  implements x
{
  bf(be parambe)
  {
  }

  public final void lX()
  {
    if (be.a(this.WU) == null);
    while (true)
    {
      return;
      if ((be.a(this.WU).WX != null) && (be.a(this.WU).WX.Ua != null))
      {
        int i;
        synchronized (be.a(this.WU).WX.Xd)
        {
          i = be.a(this.WU).WX.Ua.size();
          if (i <= 0)
            return;
        }
        for (int j = 0; (j < i) && (be.a(this.WU) != null) && (be.a(this.WU).WX != null) && (be.a(this.WU).WX.Ua != null); j++)
        {
          synchronized (be.a(this.WU).WX.Xd)
          {
            if (be.a(this.WU).WX.Ua.size() != i)
            {
              this.WU.mN();
              return;
            }
          }
          ba localba = (ba)be.a(this.WU).WX.Ua.get(j);
          if ((localba != null) && (localba.WI))
            localba.me();
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.bf
 * JD-Core Version:    0.6.2
 */