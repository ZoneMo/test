package com.tencent.mm.ui.tools.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class v extends Handler
{
  v(Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    if (u.aOK() == null);
    while (true)
    {
      return;
      switch (paramMessage.what)
      {
      default:
        throw new AssertionError("Unknown handler message received: " + paramMessage.what);
      case 3:
        a locala = (a)paramMessage.obj;
        u.aOK().an(locala.hpO.get());
        aa.d("Monet", "current action queue size: " + u.aOK().hqy.size());
        return;
      case 8:
      }
      Iterator localIterator = ((List)paramMessage.obj).iterator();
      while (localIterator.hasNext())
      {
        d locald = (d)localIterator.next();
        u.aOH().d(locald);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.v
 * JD-Core Version:    0.6.2
 */