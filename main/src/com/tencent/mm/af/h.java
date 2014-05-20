package com.tencent.mm.af;

import android.os.MessageQueue.IdleHandler;

final class h
  implements MessageQueue.IdleHandler
{
  h(g paramg)
  {
  }

  public final boolean queueIdle()
  {
    this.cyp.cyo.b(new i(this));
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.af.h
 * JD-Core Version:    0.6.2
 */