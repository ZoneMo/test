package com.tencent.mm.plugin.gwallet.a;

import android.os.Handler;
import java.util.Iterator;
import java.util.List;

final class d
  implements Runnable
{
  d(b paramb, List paramList, i parami, Handler paramHandler)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.dsZ.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      try
      {
        b.a(this.dsY, str);
      }
      catch (a locala)
      {
        i = locala.QB().dti;
      }
    }
    if (this.dta != null)
    {
      k localk = new k(i, "");
      this.cQP.post(new e(this, localk));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.a.d
 * JD-Core Version:    0.6.2
 */