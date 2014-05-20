package com.tencent.mm.booter;

import com.tencent.mm.model.am;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import java.util.Iterator;
import java.util.List;

final class o
  implements Runnable
{
  o(k paramk)
  {
  }

  public final void run()
  {
    k.d(this.bZX).azn();
    Iterator localIterator = k.c(this.bZX).iterator();
    while (localIterator.hasNext())
    {
      am localam = (am)localIterator.next();
      if (localam != null)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localam.toString();
        aa.e("MicroMsg.DownloadPlayer", "on pause call back: %s", arrayOfObject);
        localam.onPause();
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.o
 * JD-Core Version:    0.6.2
 */