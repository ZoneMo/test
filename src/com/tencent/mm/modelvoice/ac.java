package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.c.a;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.sdk.platformtools.an;

final class ac
  implements Runnable
{
  ac(ab paramab)
  {
  }

  public final void run()
  {
    try
    {
      if (s.ceL.cdh == 1)
        Thread.sleep(300L);
      if (y.c(this.cCg.cCe) != null)
        an.i(new ad(this));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.ac
 * JD-Core Version:    0.6.2
 */