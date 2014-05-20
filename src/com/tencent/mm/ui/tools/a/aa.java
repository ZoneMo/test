package com.tencent.mm.ui.tools.a;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

final class aa extends ThreadPoolExecutor
{
  private static int hqK;

  static
  {
    int i = ah.pS();
    hqK = i;
    if (i < 2)
      hqK = 2;
    if (hqK > 8)
      hqK = 8;
  }

  aa()
  {
    super(hqK, hqK, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ak());
    com.tencent.mm.sdk.platformtools.aa.d("Monet.MonetExecutorService", "Monet Thread Poolsize is " + hqK);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.aa
 * JD-Core Version:    0.6.2
 */