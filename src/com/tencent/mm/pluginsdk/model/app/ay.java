package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.sdk.platformtools.aa;

final class ay
  implements Runnable
{
  ay(aw paramaw)
  {
  }

  public final void run()
  {
    long l = System.currentTimeMillis() - aw.j(this.fhT);
    aa.d("MicroMsg.SceneAppMsg", "Try Run service runningFlag:" + aw.e(this.fhT) + " timeWait:" + l + " sending:" + aw.g(this.fhT) + " recving:" + aw.f(this.fhT));
    if (aw.e(this.fhT))
    {
      if (l < 60000L)
        return;
      aa.e("MicroMsg.SceneAppMsg", "ERR: Try Run service runningFlag:" + aw.e(this.fhT) + " timeWait:" + l + ">=MAX_TIME_WAIT sending:" + aw.g(this.fhT) + " recving:" + aw.f(this.fhT));
    }
    aw.k(this.fhT);
    aw.b(this.fhT);
    aw.a(this.fhT, 4);
    aw.a(this.fhT);
    this.fhT.ctI.reset();
    aw.l(this.fhT).bO(10L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.ay
 * JD-Core Version:    0.6.2
 */