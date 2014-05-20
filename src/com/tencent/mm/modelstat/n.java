package com.tencent.mm.modelstat;

import com.tencent.mm.protocal.a.vv;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Queue;

final class n
  implements Runnable
{
  n(l paraml, int paramInt, String paramString, Object paramObject)
  {
  }

  public final void run()
  {
    int i = 1;
    q localq1 = l.a(this.czX);
    long l1 = cj.FC();
    localq1.cAa[i] = l1;
    vv localvv = l.Dd();
    if (99999 == this.czo)
    {
      if (com.tencent.mm.compatible.g.l.qd())
        break label181;
      l.b(this.czX);
    }
    label181: int j;
    do
    {
      while (true)
      {
        return;
        if (99998 == this.czo)
        {
          Thread localThread = new Thread(new o(this), "ipxx_upload_wd");
          localThread.setPriority(i);
          localThread.start();
          i = 0;
          break;
        }
        try
        {
          int m = l.a(this.czX, this.czo, localvv, this.czY);
          k = m;
          if ((k == i) && (localvv != null))
            l.a(this.czX).er(10);
        }
        catch (Exception localException1)
        {
          try
          {
            byte[] arrayOfByte = localvv.toByteArray();
            this.czX.czE.offer(arrayOfByte);
            i = 0;
            break;
            localException1 = localException1;
            int k = 0;
          }
          catch (Exception localException2)
          {
          }
          i = 0;
        }
      }
      break;
      j = (int)l.a(this.czX).cAa[10];
      if ((50 == j) || (i != 0))
        l.c(this.czX);
    }
    while ((j < 100) && (cj.FC() <= l.d(this.czX)));
    aa.d("MicroMsg.NetStatWatchDog", "close old file cnt:" + j + " now:" + cj.FC() + " next:" + l.d(this.czX));
    l.c(this.czX);
    l.b(this.czX);
    l.a(this.czX, new q());
    q localq2 = l.a(this.czX);
    long l2 = cj.FC();
    localq2.cAa[0] = l2;
    l.e(this.czX);
    l.a(this.czX, 43200L + cj.FC());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.n
 * JD-Core Version:    0.6.2
 */