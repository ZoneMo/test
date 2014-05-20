package com.google.android.gms.internal;

import android.os.Build.VERSION;

public final class ai
{
  private static boolean aV(int paramInt)
  {
    return Build.VERSION.SDK_INT >= paramInt;
  }

  public static boolean iB()
  {
    return aV(11);
  }

  public static boolean iC()
  {
    return aV(17);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ai
 * JD-Core Version:    0.6.2
 */