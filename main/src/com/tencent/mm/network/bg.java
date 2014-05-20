package com.tencent.mm.network;

import com.tencent.mm.xlog.Xlog;

public final class bg
{
  public static void onCreate()
  {
    Xlog.init();
    System.loadLibrary("network");
    Java2C.onCreate();
  }

  public static void onDestroy()
  {
    Java2C.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.bg
 * JD-Core Version:    0.6.2
 */