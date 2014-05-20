package com.tencent.mm.sandbox.monitor;

import com.tencent.mm.sdk.platformtools.aa;

final class i
  implements Runnable
{
  i(ExceptionMonitorService paramExceptionMonitorService)
  {
  }

  public final void run()
  {
    aa.d("MicroMsg.CrashMonitorService", "stopSelf");
    this.gaM.stopSelf();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.monitor.i
 * JD-Core Version:    0.6.2
 */