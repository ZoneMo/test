package com.tencent.mm.ui.c;

import android.os.Handler;
import android.os.Message;
import b.a.e.b;

final class c extends Thread
{
  c(a parama)
  {
  }

  public final void run()
  {
    try
    {
      a.a(this.hsg, a.b(this.hsg).aRx());
      String str2 = a.b(this.hsg).b(a.c(this.hsg));
      str1 = str2;
      Message localMessage = a.d(this.hsg).obtainMessage(1000, str1);
      a.d(this.hsg).sendMessage(localMessage);
      return;
    }
    catch (b.a.b.a locala)
    {
      while (true)
        String str1 = null;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.c.c
 * JD-Core Version:    0.6.2
 */