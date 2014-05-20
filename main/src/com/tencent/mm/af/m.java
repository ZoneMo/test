package com.tencent.mm.af;

import android.os.MessageQueue.IdleHandler;
import com.tencent.mm.sdk.platformtools.aa;

final class m
  implements MessageQueue.IdleHandler
{
  m(l paraml)
  {
  }

  public final boolean queueIdle()
  {
    aa.d("upload", "queueIdle  ");
    e.CL().b(this.cyw.cyv);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.af.m
 * JD-Core Version:    0.6.2
 */