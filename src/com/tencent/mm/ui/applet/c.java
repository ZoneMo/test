package com.tencent.mm.ui.applet;

import android.os.MessageQueue.IdleHandler;
import java.util.LinkedList;

final class c
  implements MessageQueue.IdleHandler
{
  c(b paramb)
  {
  }

  public final boolean queueIdle()
  {
    while (b.a(this.gxk).size() > 0)
    {
      String str = (String)b.a(this.gxk).removeFirst();
      b.b(this.gxk).fz(str);
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.c
 * JD-Core Version:    0.6.2
 */