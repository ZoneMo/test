package com.tencent.mm.plugin.backup.model;

import android.os.Handler;
import com.tencent.mm.pluginsdk.model.f;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

final class ab extends f
{
  String bPx = "";
  int cKV = 0;

  public ab(aa paramaa)
  {
    if (aa.a(paramaa).size() > 0)
    {
      aa.b(paramaa).add(aa.a(paramaa).get(0));
      this.bPx = ((String)aa.a(paramaa).remove());
    }
    while (true)
    {
      return;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MMAsyncTask", "callback ");
      Iterator localIterator = aa.c(paramaa).iterator();
      while (localIterator.hasNext())
      {
        ac localac = (ac)localIterator.next();
        if (localac != null)
          localac.GE();
      }
    }
  }

  public final Handler Hq()
  {
    return d.Gg();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.ab
 * JD-Core Version:    0.6.2
 */