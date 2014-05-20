package com.tencent.mm.w;

import android.os.Handler;

final class j
  implements Runnable
{
  j(g paramg, String paramString, float paramFloat)
  {
  }

  public final void run()
  {
    this.cto.a(this.ctp, true, this.ctq, true, false);
    g.a(this.cto).post(new k(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.j
 * JD-Core Version:    0.6.2
 */