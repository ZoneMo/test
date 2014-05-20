package com.tencent.mm.plugin.backup.model;

import android.os.Handler;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;

final class n extends al
{
  n(l paraml, String paramString)
  {
  }

  public final void run()
  {
    int i;
    Iterator localIterator;
    int j;
    if (!cj.hX(l.a(this.cKs).Hg()))
    {
      i = 1;
      localIterator = l.a(this.cKs).Hf().iterator();
      j = i;
    }
    String str;
    com.tencent.mm.storage.n localn;
    while (true)
      if (localIterator.hasNext())
      {
        str = (String)localIterator.next();
        aa.d("MicroMsg.MMThread", "mmbakup  " + str);
        if (Hs())
        {
          return;
          i = 0;
          break;
        }
        if (j != 0)
        {
          if (str.equals(l.a(this.cKs).Hg()))
            j = 0;
        }
        else
        {
          localn = d.Gj().sx().tZ(str);
          if (localn == null)
            break label202;
        }
      }
    label202: for (int k = localn.rN(); ; k = 0)
    {
      try
      {
        int m = l.a(this.cKs, str, this.cKt, k);
        if (m >= 0)
          break;
        return;
      }
      catch (Exception localException)
      {
        aa.a("MicroMsg.MMThread", "BackupServer.startTask MMThread.run() %s", new Object[] { localException });
      }
      break;
      l.c(this.cKs).post(new o(this));
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.n
 * JD-Core Version:    0.6.2
 */