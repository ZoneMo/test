package com.tencent.mm.w;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;

final class r
  implements Runnable
{
  r(o paramo)
  {
  }

  public final void run()
  {
    long l = System.currentTimeMillis() - o.f(this.ctK);
    if (o.g(this.ctK))
    {
      if (l < 60000L)
        return;
      aa.e("MicroMsg.ImgService", "ERR: Try Run service runningFlag:" + o.g(this.ctK) + " timeWait:" + l + ">=MAX_TIME_WAIT sending:" + o.g(this.ctK));
    }
    o.h(this.ctK);
    o.i(this.ctK);
    this.ctK.ctI.reset();
    o.j(this.ctK).bO(10L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.r
 * JD-Core Version:    0.6.2
 */