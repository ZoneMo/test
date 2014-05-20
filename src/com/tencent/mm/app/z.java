package com.tencent.mm.app;

import com.tencent.mm.c.a.fv;
import com.tencent.mm.c.a.fw;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.cj;

final class z extends g
{
  z(WorkerProfile paramWorkerProfile)
  {
  }

  public final boolean a(e parame)
  {
    fv localfv = (fv)parame;
    if (!cj.hX(localfv.bQp.bQu))
      s.a(localfv.bQp.bOa, localfv.bQp.appId, localfv.bQp.appName, localfv.bQp.bQq, localfv.bQp.bQr, localfv.bQp.bQu);
    while (true)
    {
      return false;
      s.a(localfv.bQp.bOa, localfv.bQp.appId, localfv.bQp.appName, localfv.bQp.bQq, localfv.bQp.bQr, localfv.bQp.bQs, localfv.bQp.bQt);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.z
 * JD-Core Version:    0.6.2
 */