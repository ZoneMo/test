package com.tencent.mm.z;

import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.storage.h;
import java.util.ArrayList;

final class u
  implements Runnable
{
  u(int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    t.By();
    t.gb(h.cfE + "/testaddmsg.txt");
    if ((t.Bz().size() <= 0) || (t.BA().size() <= 0))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(t.BA().size());
      arrayOfObject[1] = Integer.valueOf(t.Bz().size());
      aa.b("MicroMsg.TestSyncAddMsg", "syncAddMsg get source failed cmd:%d contact:%d", arrayOfObject);
      return;
    }
    new ay(be.ut().getLooper(), new v(this), true).bO(3000L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.u
 * JD-Core Version:    0.6.2
 */