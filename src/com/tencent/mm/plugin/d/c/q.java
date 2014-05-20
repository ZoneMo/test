package com.tencent.mm.plugin.d.c;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.cj;

final class q
  implements Runnable
{
  q(p paramp)
  {
  }

  public final void run()
  {
    if (!be.se())
      return;
    cj.e(be.uz().sS(), "temp_", 10800000L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.c.q
 * JD-Core Version:    0.6.2
 */