package com.tencent.mm.plugin.backup.model;

import android.os.Build;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.backup.b.g;
import com.tencent.mm.plugin.backup.b.h;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;

final class p
  implements Runnable
{
  p(l paraml)
  {
  }

  public final void run()
  {
    if (l.d(this.cKs))
      aa.d("MicroMsg.BackupServer", "checkUpload break  ");
    label296: 
    do
    {
      h localh;
      do
      {
        do
          return;
        while (l.a(this.cKs).Hb());
        if (l.a(this.cKs).GV() != 0)
          break;
        localh = new h(l.a(this.cKs).GU(), Build.MODEL, l.a(this.cKs).Hj(), l.a(this.cKs).Hk());
      }
      while (d.uA().d(localh));
      l.a(this.cKs, "send UploadHead");
      return;
      synchronized (l.e(this.cKs))
      {
        if (l.a(this.cKs).He() < 15)
          l.e(this.cKs).notify();
        aa.d("MicroMsg.BackupServer", "msgList " + l.a(this.cKs).Hd().size() + " " + l.a(this.cKs).Hc().size());
        if ((l.a(this.cKs).He() != 0) || (l.a(this.cKs).GV() != 2))
          break label296;
        aa.d("MicroMsg.BackupServer", "bak data is finish");
        g localg = new g(l.a(this.cKs).GU(), l.a(this.cKs).GT());
        if (!d.uA().d(localg))
        {
          l.a(this.cKs, "send UploadEnd");
          return;
        }
      }
      l.a(this.cKs).eY(3);
      if (l.f(this.cKs) > l.GJ())
        return;
      if (l.g(this.cKs))
      {
        l.b(this.cKs);
        return;
      }
    }
    while (!l.h(this.cKs));
    l.b(this.cKs);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.p
 * JD-Core Version:    0.6.2
 */