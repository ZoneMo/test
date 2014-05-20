package com.tencent.mm.plugin.backup.model;

import android.os.Handler;
import com.tencent.mm.plugin.backup.a.h;
import com.tencent.mm.plugin.backup.c.a;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

final class at extends al
{
  at(ar paramar, long paramLong)
  {
  }

  public final void run()
  {
    h.cJx = 0;
    h.cJy = 0;
    h.cJz = 0;
    h.cJA = 0;
    h.cJB = 0;
    h.cJC = 0;
    h.cJD = 0;
    long l = System.currentTimeMillis();
    h.cJE = l;
    h.cJG = l - h.cJF;
    aa.d("MicroMsg.TestInfo", "netTime" + (System.currentTimeMillis() - h.cJF));
    aw localaw = new aw();
    localaw.begin();
    HashMap localHashMap = new HashMap();
    Iterator localIterator = ar.b(this.cLg).GY().iterator();
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (Hs())
        return;
      int i;
      try
      {
        i = ar.a(this.cLg, str, localHashMap, localaw);
        if (i < 0)
        {
          aa.w("MicroMsg.MMThread", "Thread has been killed");
          return;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.MMThread", "Thread.run err:" + localException.toString());
        aa.aM("MicroMsg.MMThread", "recoverFromSdcard MMThread.run() " + localException.toString());
      }
      while (true)
      {
        ar.f(this.cLg).post(new au(this));
        break;
        ar.a(this.cLg, i);
      }
    }
    a.b(localHashMap);
    localaw.end();
    aa.d("MicroMsg.MMThread", "build temDB finish!");
    d.e(new av(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.at
 * JD-Core Version:    0.6.2
 */