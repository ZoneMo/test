package com.tencent.mm.sdk.platformtools;

import java.util.HashSet;
import java.util.Set;

public final class am
{
  private static Set gdH = new HashSet();

  public static boolean sE(String paramString)
  {
    if (sG(paramString))
    {
      aa.d("MicroMsg.MMEntryLock", "locked-" + paramString);
      return false;
    }
    aa.d("MicroMsg.MMEntryLock", "lock-" + paramString);
    return gdH.add(paramString);
  }

  public static void sF(String paramString)
  {
    gdH.remove(paramString);
    aa.d("MicroMsg.MMEntryLock", "unlock-" + paramString);
  }

  public static boolean sG(String paramString)
  {
    return gdH.contains(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.am
 * JD-Core Version:    0.6.2
 */