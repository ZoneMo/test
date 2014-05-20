package com.tencent.mm.ui.tools.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

final class o extends Handler
{
  public WeakReference hqq;

  public o(Looper paramLooper, n paramn)
  {
    super(paramLooper);
    this.hqq = new WeakReference(paramn);
  }

  public final void handleMessage(Message paramMessage)
  {
    n localn = (n)this.hqq.get();
    if (localn != null);
    a locala2;
    switch (paramMessage.what)
    {
    case 3:
    case 5:
    default:
      throw new AssertionError("Unknown handler message received: " + paramMessage.what);
    case 1:
      locala2 = (a)paramMessage.obj;
      d locald2 = (d)localn.hqn.get(locala2.cnG);
      if (locald2 != null)
        locald2.a(locala2);
    case 2:
      String str;
      d locald1;
      do
      {
        a locala1;
        do
        {
          do
            return;
          while (localn.hqm.isShutdown());
          d locald3 = d.a(localn.context, localn, localn.hpY, localn.hpZ, locala2);
          locald3.hqb = localn.hqm.submit(locald3);
          localn.hqn.put(locala2.cnG, locald3);
          return;
          locala1 = (a)paramMessage.obj;
          str = locala1.cnG;
          locald1 = (d)localn.hqn.get(str);
        }
        while (locald1 == null);
        locald1.b(locala1);
      }
      while (!locald1.cancel());
      localn.hqn.remove(str);
      return;
    case 4:
      localn.a((d)paramMessage.obj);
      return;
    case 6:
      localn.b((d)paramMessage.obj);
      return;
    case 7:
    }
    ArrayList localArrayList = new ArrayList(localn.hqp);
    localn.hqp.clear();
    localn.hqo.sendMessageAtFrontOfQueue(localn.hqo.obtainMessage(8, localArrayList));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.o
 * JD-Core Version:    0.6.2
 */