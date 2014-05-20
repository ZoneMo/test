package com.tencent.mm.n;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;
import java.util.Vector;

final class ad
  implements az
{
  ad(ac paramac)
  {
  }

  public final boolean ok()
  {
    if (ac.a(this.cmu) == null)
      return false;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(ac.b(this.cmu).size());
    arrayOfObject[1] = Integer.valueOf(ac.c(this.cmu).size());
    arrayOfObject[2] = Boolean.valueOf(ac.d(this.cmu));
    aa.f("MicroMsg.netscene.NetSceneQueue", "onQueueIdle, running=%d, waiting=%d, foreground=%b", arrayOfObject);
    ak localak = ac.a(this.cmu);
    ac localac = this.cmu;
    boolean bool1 = ac.e(this.cmu);
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ac.b(this.cmu).isEmpty();
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = ac.c(this.cmu).isEmpty();
        bool2 = false;
        if (bool4)
          bool2 = true;
      }
    }
    localak.a(localac, bool2);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.ad
 * JD-Core Version:    0.6.2
 */