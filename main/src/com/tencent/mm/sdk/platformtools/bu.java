package com.tencent.mm.sdk.platformtools;

import android.os.Handler;
import android.os.Looper;
import java.util.Vector;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public final class bu
{
  private LinkedBlockingQueue geN = new LinkedBlockingQueue();
  private int geO = 1;
  private Vector geP = new Vector();
  private Handler geQ;
  private Object lock = new byte[0];
  private String name = "";
  private int priority = 1;
  private boolean ti = false;

  public bu(int paramInt, String paramString)
  {
    this(paramInt, paramString, 1);
  }

  public bu(int paramInt1, String paramString, int paramInt2)
  {
    this(paramInt1, paramString, paramInt2, Looper.myLooper());
  }

  public bu(int paramInt1, String paramString, int paramInt2, Looper paramLooper)
  {
    this.geO = paramInt2;
    this.name = paramString;
    this.priority = paramInt1;
    this.geQ = new bv(this, paramLooper);
  }

  @Deprecated
  public final boolean azH()
  {
    return (this.geP == null) || (this.geP.size() == 0);
  }

  public final int c(bw parambw)
  {
    int j;
    if (parambw == null)
    {
      aa.e("QueueWorkerThread.QueueWorkerThread", "add empty thread object");
      j = -1;
    }
    int k;
    int m;
    do
    {
      int i;
      do
      {
        return j;
        try
        {
          if (!this.geN.offer(parambw, 1L, TimeUnit.MILLISECONDS))
          {
            aa.e("QueueWorkerThread.QueueWorkerThread", "add To Queue failed");
            return -2;
          }
        }
        catch (Exception localException)
        {
          aa.e("QueueWorkerThread.QueueWorkerThread", "add To Queue failed :" + localException.getMessage());
          return -3;
        }
        if (this.geP.size() == 0)
          break;
        i = this.geN.size();
        j = 0;
      }
      while (i <= 0);
      k = this.geO;
      m = this.geP.size();
      j = 0;
    }
    while (k <= m);
    new bx(this, (byte)0).start();
    return 0;
  }

  public final void cR(boolean paramBoolean)
  {
    synchronized (this.lock)
    {
      this.ti = paramBoolean;
      if (!paramBoolean);
      synchronized (this.lock)
      {
        this.lock.notifyAll();
        return;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.bu
 * JD-Core Version:    0.6.2
 */