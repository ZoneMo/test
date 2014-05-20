package com.tencent.mm.ar;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;
import java.lang.ref.WeakReference;

final class c extends Handler
{
  public final void handleMessage(Message paramMessage)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramMessage.what);
    aa.d("MicroMsg.TraceDebugManager", "TRACE handle msg :%d ", arrayOfObject);
    if (paramMessage.what == 0)
      a.gjO.b((e)paramMessage.obj);
    while (true)
    {
      super.handleMessage(paramMessage);
      return;
      if (paramMessage.what == 1)
      {
        if (a.c(a.gjO) != null)
        {
          f localf = (f)a.c(a.gjO).get();
          if (localf != null)
            localf.aDF();
        }
      }
      else
        a.a(a.gjO, (e)paramMessage.obj);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ar.c
 * JD-Core Version:    0.6.2
 */