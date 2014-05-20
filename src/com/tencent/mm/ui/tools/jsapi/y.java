package com.tencent.mm.ui.tools.jsapi;

import com.tencent.mm.pluginsdk.m;
import com.tencent.mm.sdk.platformtools.aa;

final class y
  implements Runnable
{
  y(p paramp)
  {
  }

  public final void run()
  {
    if (p.i(this.hpx) != null)
      p.i(this.hpx).b(p.j(this.hpx));
    if (p.j(this.hpx) == null)
    {
      aa.w("MicroMsg.MsgHandler", "already callback");
      return;
    }
    p.k(this.hpx);
    p.a(this.hpx, p.b(this.hpx), "geo_location:fail_timeout", null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.y
 * JD-Core Version:    0.6.2
 */