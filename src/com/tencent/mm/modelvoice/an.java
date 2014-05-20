package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;

final class an
  implements Runnable
{
  an(al paramal)
  {
  }

  public final void run()
  {
    long l = System.currentTimeMillis() - al.j(this.cCy);
    aa.d("MicroMsg.SceneVoice", "Try Run service runningFlag:" + al.e(this.cCy) + " timeWait:" + l + " sending:" + al.g(this.cCy) + " recving:" + al.f(this.cCy));
    if (al.e(this.cCy))
    {
      if (l < 60000L)
        return;
      aa.e("MicroMsg.SceneVoice", "ERR: Try Run service runningFlag:" + al.e(this.cCy) + " timeWait:" + l + ">=MAX_TIME_WAIT sending:" + al.g(this.cCy) + " recving:" + al.f(this.cCy));
    }
    al.k(this.cCy);
    al.b(this.cCy);
    al.a(this.cCy, 3);
    al.a(this.cCy);
    this.cCy.ctI.reset();
    al.l(this.cCy).bO(10L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.an
 * JD-Core Version:    0.6.2
 */