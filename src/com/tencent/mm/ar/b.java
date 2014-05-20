package com.tencent.mm.ar;

import android.os.Debug;
import android.os.Handler;
import android.os.Process;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.util.concurrent.LinkedBlockingQueue;

final class b
  implements Runnable
{
  b(a parama, e parame)
  {
  }

  public final void run()
  {
    try
    {
      Debug.stopMethodTracing();
      String str1 = this.gjV.gjZ;
      int i = this.gjV.gjY;
      String str2 = this.gjV.gjZ;
      if (str2 == null)
        return;
      File localFile1 = new File(str1);
      File localFile2 = new File(str1.substring(0, str1.lastIndexOf('.')) + ".snapshot");
      long l = System.currentTimeMillis();
      localFile1.renameTo(localFile2);
      localFile1.delete();
      aa.i("MicroMsg.TraceDebugManager", "TRACE xorEn last :" + (System.currentTimeMillis() - l));
      Process.setThreadPriority(10);
      if (this.gjV.bRd == 6)
      {
        a.ctk.sendEmptyMessage(1);
        return;
      }
      if ((a.a(this.gjW) == null) || (a.a(this.gjW).size() == 0))
      {
        String str3 = a.l(localFile2);
        if (!cj.hX(str3))
          this.gjW.u(i, str3);
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localThrowable.getMessage();
      aa.b("MicroMsg.TraceDebugManager", "TRACE stopMethodTracing ERROR %s", arrayOfObject);
      return;
    }
    finally
    {
      a.b(this.gjW);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ar.b
 * JD-Core Version:    0.6.2
 */