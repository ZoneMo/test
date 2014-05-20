package com.tencent.mm.pluginsdk.model.downloader;

import android.os.Build.VERSION;

public final class m
{
  private static l fiB;

  public static l aqu()
  {
    if (Build.VERSION.SDK_INT >= 9)
      if (fiB == null)
        fiB = new i();
    while (true)
    {
      return fiB;
      if (fiB == null)
        fiB = new j();
    }
  }

  public static l aqv()
  {
    j localj = new j();
    fiB = localj;
    return localj;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.downloader.m
 * JD-Core Version:    0.6.2
 */