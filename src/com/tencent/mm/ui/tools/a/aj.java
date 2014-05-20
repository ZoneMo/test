package com.tencent.mm.ui.tools.a;

import android.os.Process;

final class aj extends Thread
{
  public aj(Runnable paramRunnable)
  {
    super(paramRunnable);
  }

  public final void run()
  {
    Process.setThreadPriority(10);
    super.run();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.aj
 * JD-Core Version:    0.6.2
 */