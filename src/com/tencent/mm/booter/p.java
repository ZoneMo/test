package com.tencent.mm.booter;

import com.tencent.mm.model.am;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import java.util.Iterator;
import java.util.List;

final class p
  implements Runnable
{
  p(k paramk)
  {
  }

  public final void run()
  {
    Iterator localIterator = k.c(this.bZX).iterator();
    while (localIterator.hasNext())
    {
      am localam = (am)localIterator.next();
      if (localam != null)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localam.toString();
        aa.d("MicroMsg.DownloadPlayer", "on resume call back: %s", arrayOfObject);
        localam.onResume();
      }
    }
    k.d(this.bZX).bO(50L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.p
 * JD-Core Version:    0.6.2
 */