package com.tencent.mm.sdk.platformtools;

import android.os.Handler;
import java.util.Vector;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

final class bx extends Thread
{
  private int geS = 60;

  private bx(bu parambu)
  {
    super(bu.b(parambu));
    setPriority(bu.c(parambu));
    bu.d(parambu).add(this);
  }

  public final void run()
  {
    while (true)
    {
      if (this.geS > 0);
      try
      {
        label37: synchronized (bu.e(this.geR))
        {
          if (bu.f(this.geR))
            bu.e(this.geR).wait();
        }
        bw localbw;
        try
        {
          localbw = (bw)bu.g(this.geR).poll(2000L, TimeUnit.MILLISECONDS);
          if (localbw == null)
          {
            this.geS = (-1 + this.geS);
            continue;
            localObject2 = finally;
            throw localObject2;
          }
        }
        catch (Exception localException2)
        {
          while (true)
            localbw = null;
          this.geS = 60;
        }
        if (!localbw.ve())
          continue;
        bu.h(this.geR).sendMessage(bu.h(this.geR).obtainMessage(0, localbw));
        continue;
        bu.d(this.geR).remove(this);
        aa.d("QueueWorkerThread.QueueWorkerThread", "dktest Finish queueToReqSize:" + bu.g(this.geR).size() + " ThreadSize:" + bu.d(this.geR).size());
        return;
      }
      catch (Exception localException1)
      {
        break label37;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.bx
 * JD-Core Version:    0.6.2
 */