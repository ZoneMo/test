package com.tencent.mm.plugin.wallet.e;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class a
{
  private static String eXf = "";
  private static long feq = 0L;

  public static boolean aoN()
  {
    long l = cj.M(feq);
    aa.d("MicroMsg.TimeStampHelper", "pass time " + l);
    return l > 300L;
  }

  public static String aoO()
  {
    return eXf;
  }

  public static void pO(String paramString)
  {
    eXf = paramString;
    feq = System.currentTimeMillis() / 1000L;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.e.a
 * JD-Core Version:    0.6.2
 */