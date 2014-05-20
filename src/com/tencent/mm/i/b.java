package com.tencent.mm.i;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class b extends Handler
{
  b(a parama, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    if ((paramMessage.what == 0) && ((paramMessage.obj instanceof d)))
    {
      d locald = (d)paramMessage.obj;
      a locala2 = this.cgi;
      int j = locald.cgj;
      a.a(locala2, j);
    }
    if ((paramMessage.what == 1) && ((paramMessage.obj instanceof e)))
    {
      e locale = (e)paramMessage.obj;
      a locala1 = this.cgi;
      int i = locale.cgk;
      a.b(locala1, i);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.i.b
 * JD-Core Version:    0.6.2
 */