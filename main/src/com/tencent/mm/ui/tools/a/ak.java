package com.tencent.mm.ui.tools.a;

import java.util.concurrent.ThreadFactory;

final class ak
  implements ThreadFactory
{
  public final Thread newThread(Runnable paramRunnable)
  {
    return new aj(paramRunnable);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.ak
 * JD-Core Version:    0.6.2
 */