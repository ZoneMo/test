package com.tencent.mm.pluginsdk.d.a;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class a
{
  private CountDownLatch fgN = null;

  public final void a(long paramLong, Runnable paramRunnable)
  {
    if (this.fgN == null)
      this.fgN = new CountDownLatch(1);
    an.i(paramRunnable);
    if (this.fgN != null);
    try
    {
      this.fgN.await(paramLong, TimeUnit.MILLISECONDS);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      aa.w("MicroMsg.SyncJob", localInterruptedException.getMessage());
    }
  }

  public final void countDown()
  {
    if (this.fgN != null)
    {
      this.fgN.countDown();
      this.fgN = null;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.d.a.a
 * JD-Core Version:    0.6.2
 */