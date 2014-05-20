package com.tencent.mm.sandbox;

import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;
import java.util.Map;

public final class c
{
  private static c gaE = null;
  private static Map gaF = new HashMap();

  public static void lw(int paramInt)
  {
    aa.i("MicroMsg.SandBoxCore", "regLifeCycle, id=" + paramInt);
    gaF.put(Integer.valueOf(paramInt), Boolean.valueOf(true));
  }

  public static void lx(int paramInt)
  {
    aa.i("MicroMsg.SandBoxCore", "unregLifeCycle, id=" + paramInt);
    gaF.remove(Integer.valueOf(paramInt));
    aa.i("MicroMsg.SandBoxCore", "unregLifeCycle, map size=" + gaF.size());
    if (gaF.size() == 0)
      System.exit(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.c
 * JD-Core Version:    0.6.2
 */