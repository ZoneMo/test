package com.tencent.mm.ai;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;

final class ab
  implements Runnable
{
  ab(z paramz)
  {
  }

  public final void run()
  {
    long l = System.currentTimeMillis() - z.l(this.cBq);
    aa.d("MicroMsg.VideoService", "Try Run service runningFlag:" + z.g(this.cBq) + " timeWait:" + l + " sending:" + z.i(this.cBq) + " recving:" + z.h(this.cBq));
    if (z.g(this.cBq))
    {
      if (l < 60000L)
        return;
      aa.e("MicroMsg.VideoService", "ERR: Try Run service runningFlag:" + z.g(this.cBq) + " timeWait:" + l + ">=MAX_TIME_WAIT sending:" + z.i(this.cBq) + " recving:" + z.h(this.cBq));
    }
    z.a(this.cBq, 3);
    z.m(this.cBq);
    z.c(this.cBq);
    z.a(this.cBq);
    z.d(this.cBq);
    z.b(this.cBq);
    this.cBq.ctI.reset();
    z.n(this.cBq).bO(10L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.ab
 * JD-Core Version:    0.6.2
 */