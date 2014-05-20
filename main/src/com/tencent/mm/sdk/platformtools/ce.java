package com.tencent.mm.sdk.platformtools;

import android.os.Handler;
import android.os.Looper;

public abstract class ce
{
  private long cjj;
  private final long cmB;
  private long gfe;
  private Runnable gff = new cf(this);
  private Object lock = new Object();
  private Object result;

  public ce(long paramLong, Object paramObject)
  {
    this.cmB = paramLong;
    this.result = paramObject;
  }

  public final void af(Object paramObject)
  {
    this.result = paramObject;
    synchronized (this.lock)
    {
      this.lock.notify();
      return;
    }
  }

  public final Object b(Handler paramHandler)
  {
    if (paramHandler == null)
    {
      aa.d("MicroMsg.SDK.SyncTask", "null handler, task in exec thread, return now");
      return run();
    }
    aa.i("MicroMsg.SDK.SyncTask", "sync task exec...");
    if (Thread.currentThread().getId() == paramHandler.getLooper().getThread().getId())
    {
      aa.d("MicroMsg.SDK.SyncTask", "same tid, task in exec thread, return now");
      return run();
    }
    this.cjj = cj.FE();
    try
    {
      synchronized (this.lock)
      {
        paramHandler.post(this.gff);
        this.lock.wait(this.cmB);
        label94: long l = cj.O(this.cjj);
        Object[] arrayOfObject = new Object[4];
        arrayOfObject[0] = this.result;
        arrayOfObject[1] = Long.valueOf(l);
        arrayOfObject[2] = Long.valueOf(this.gfe);
        arrayOfObject[3] = Long.valueOf(l - this.gfe);
        aa.d("MicroMsg.SDK.SyncTask", "sync task done, return=%s, cost=%d(wait=%d, run=%d)", arrayOfObject);
        return this.result;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      break label94;
    }
  }

  protected abstract Object run();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.ce
 * JD-Core Version:    0.6.2
 */