package com.tencent.mm.booter;

import android.os.Process;
import com.tencent.mm.network.bd;
import com.tencent.mm.network.k;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.j;

final class aq
  implements Runnable
{
  aq(ap paramap)
  {
  }

  public final void run()
  {
    long l = au.FD();
    Process.setThreadPriority(10);
    String str = this.caN.oT();
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Thread.currentThread().getName();
    arrayOfObject1[1] = Integer.valueOf(Process.getThreadPriority(Process.myTid()));
    arrayOfObject1[2] = str;
    aa.d("MicroMsg.StartupReport", "tryReport thread:%s pri:%d  Url[%s] ", arrayOfObject1);
    if (au.hX(str));
    while (true)
    {
      return;
      bd localbd = null;
      try
      {
        localbd = k.hD(str);
        if (localbd == null)
        {
          aa.b("MicroMsg.StartupReport", "tryReport ERR: genHttpConnection is null url[%s]", new Object[] { str });
          return;
        }
      }
      catch (Exception localException)
      {
        aa.b("MicroMsg.StartupReport", "tryReport error url[%s]", new Object[] { str });
      }
      while (localbd != null)
      {
        localbd.disconnect();
        return;
        localbd.setConnectTimeout(10000);
        localbd.setReadTimeout(10000);
        localbd.connect();
        int i = localbd.getResponseCode();
        if (i == 200)
          this.caN.w(j.bKo, a.fxr);
        Object[] arrayOfObject2 = new Object[3];
        arrayOfObject2[0] = Long.valueOf(au.N(l));
        arrayOfObject2[1] = Integer.valueOf(i);
        arrayOfObject2[2] = str;
        aa.e("MicroMsg.StartupReport", "report FIN time:%d resp:%d url[%s]", arrayOfObject2);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.aq
 * JD-Core Version:    0.6.2
 */