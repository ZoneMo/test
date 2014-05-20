package com.tencent.mm.compatible.loader;

import android.os.Process;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ce;
import com.tencent.mm.sdk.platformtools.cj;

final class k extends ce
{
  k(j paramj)
  {
    super(2000L, null);
  }

  private static String qa()
  {
    String str;
    while (true)
    {
      str = cj.r(al.getContext(), Process.myPid());
      if (str != null)
        break;
      try
      {
        Thread.sleep(100L);
      }
      catch (InterruptedException localInterruptedException)
      {
      }
    }
    return str;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.loader.k
 * JD-Core Version:    0.6.2
 */