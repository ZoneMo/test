package com.tencent.mm.n;

import android.os.Handler;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Vector;

final class ag
  implements Runnable
{
  ag(ac paramac, x paramx)
  {
  }

  public final void run()
  {
    this.cmw.a(this.cmu);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.cmw.hashCode());
    aa.d("MicroMsg.netscene.NetSceneQueue", "post to worker, scene begin do, hashcode:%d", arrayOfObject1);
    int i;
    if (ac.f(this.cmu) != null)
    {
      i = this.cmw.a(ac.f(this.cmu), this.cmu);
      if (i >= 0);
    }
    while (true)
    {
      Object[] arrayOfObject2 = new Object[3];
      boolean bool;
      if (ac.f(this.cmu) == null)
        bool = true;
      Object[] arrayOfObject3;
      while (true)
      {
        arrayOfObject2[0] = Boolean.valueOf(bool);
        arrayOfObject2[1] = Integer.valueOf(i);
        arrayOfObject2[2] = Integer.valueOf(this.cmw.hashCode());
        aa.c("MicroMsg.netscene.NetSceneQueue", "not doScene, autoAuth is null :%b, ret %d, hashcode:%d", arrayOfObject2);
        this.cmw.a(null);
        synchronized (ac.g(this.cmu))
        {
          ac.b(this.cmu).remove(this.cmw);
          ac.h(this.cmu).post(new ah(this));
          return;
          bool = false;
        }
      }
      arrayOfObject3[0] = Integer.valueOf(this.cmw.hashCode());
      aa.d("MicroMsg.netscene.NetSceneQueue", "scene done, hashcode:%d", arrayOfObject3);
      this.cmw.S(false);
      return;
      i = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.ag
 * JD-Core Version:    0.6.2
 */