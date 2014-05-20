package com.tencent.mm.platformtools;

import android.os.Build.VERSION;

public final class c
{
  public static int hH(String paramString)
  {
    if (Build.VERSION.SDK_INT >= 5)
    {
      new j();
      return j.hH(paramString);
    }
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.c
 * JD-Core Version:    0.6.2
 */