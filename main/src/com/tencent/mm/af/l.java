package com.tencent.mm.af;

import android.os.Looper;
import android.os.MessageQueue;

final class l
  implements Runnable
{
  l(k paramk)
  {
  }

  public final void run()
  {
    Looper.myQueue().addIdleHandler(new m(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.af.l
 * JD-Core Version:    0.6.2
 */