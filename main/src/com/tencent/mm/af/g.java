package com.tencent.mm.af;

import android.os.Looper;
import android.os.MessageQueue;

final class g
  implements Runnable
{
  g(e parame)
  {
  }

  public final void run()
  {
    Looper.myQueue().addIdleHandler(new h(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.af.g
 * JD-Core Version:    0.6.2
 */