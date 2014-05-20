package com.tencent.mm.console;

import com.tencent.mm.sdk.platformtools.aa;

final class n
  implements Runnable
{
  public final void run()
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Long.valueOf(Thread.currentThread().getId());
    arrayOfObject1[1] = Thread.currentThread().getName();
    aa.e("MicroMsg.Shell", "dkcrash begin tid:%d [%s]", arrayOfObject1);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(null.length());
    aa.e("MicroMsg.Shell", "%d ", arrayOfObject2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.console.n
 * JD-Core Version:    0.6.2
 */