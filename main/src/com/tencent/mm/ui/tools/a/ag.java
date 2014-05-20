package com.tencent.mm.ui.tools.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

class ag extends Handler
{
  WeakReference hrg;

  public ag(Looper paramLooper, af paramaf)
  {
    super(paramLooper);
    this.hrg = new WeakReference(paramaf);
  }

  public void handleMessage(Message paramMessage)
  {
    while (true)
    {
      af localaf;
      try
      {
        localaf = (af)this.hrg.get();
        if (localaf != null);
        switch (paramMessage.what)
        {
        default:
          return;
        case 1:
          localaf.hqY = (1L + localaf.hqY);
          continue;
        case 2:
        case 3:
        case 4:
        }
      }
      finally
      {
      }
      localaf.hqZ = (1L + localaf.hqZ);
      continue;
      long l2 = paramMessage.arg1;
      localaf.hre = (1 + localaf.hre);
      localaf.hra = (l2 + localaf.hra);
      int j = localaf.hre;
      localaf.hrc = (localaf.hra / j);
      continue;
      long l1 = paramMessage.arg1;
      localaf.hrf = (1 + localaf.hrf);
      localaf.hrb = (l1 + localaf.hrb);
      int i = localaf.hre;
      localaf.hrd = (localaf.hrb / i);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.ag
 * JD-Core Version:    0.6.2
 */