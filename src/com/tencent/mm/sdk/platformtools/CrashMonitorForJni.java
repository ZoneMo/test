package com.tencent.mm.sdk.platformtools;

import android.os.Build.VERSION;

public class CrashMonitorForJni
{
  private static final String TAG = "MicroMsg.CrashMonitorForJni";
  public static k callback = null;

  private static void OnCrash(int paramInt, String paramString)
  {
    new StringBuilder("OnCrash sig:").append(paramInt).append("  stack:").append(paramString).toString();
    at.azE().s(paramInt, paramString);
  }

  public static void init()
  {
    if (8 <= Build.VERSION.SDK_INT)
      System.loadLibrary("CrashMonitorForJni");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.CrashMonitorForJni
 * JD-Core Version:    0.6.2
 */