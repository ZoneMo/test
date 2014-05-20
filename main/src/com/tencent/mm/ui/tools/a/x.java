package com.tencent.mm.ui.tools.a;

import android.os.Handler;
import android.os.Process;
import java.lang.ref.ReferenceQueue;

final class x extends Thread
{
  private final Handler handler;
  private final ReferenceQueue hqA;

  x(ReferenceQueue paramReferenceQueue, Handler paramHandler)
  {
    this.hqA = paramReferenceQueue;
    this.handler = paramHandler;
    setDaemon(true);
    setName("MonetrefQueue");
  }

  public final void run()
  {
    Process.setThreadPriority(10);
    try
    {
      while (true)
      {
        b localb = (b)this.hqA.remove();
        this.handler.sendMessage(this.handler.obtainMessage(3, localb.hpT));
      }
    }
    catch (InterruptedException localInterruptedException)
    {
    }
    catch (Exception localException)
    {
      this.handler.post(new y(this, localException));
    }
  }

  final void shutdown()
  {
    interrupt();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.x
 * JD-Core Version:    0.6.2
 */