package com.tencent.mm.protocal;

import android.os.Build;
import android.os.Build.VERSION;
import junit.framework.Assert;

public final class a
{
  public static String fxk = "android-" + Build.VERSION.SDK_INT;
  public static final String fxl = Build.BRAND;
  public static final String fxm = Build.MODEL + Build.CPU_ABI;
  public static final String fxn = "android-" + Build.VERSION.SDK_INT;
  public static final String fxo = "android-" + Build.MANUFACTURER;
  public static final String fxp = Build.VERSION.SDK_INT;
  public static final String fxq = Build.MANUFACTURER + "-" + Build.MODEL;
  public static int fxr = 620888113;
  private static final int[] fxs = { 603979937, 603979938, 604045492, 604111029, 604111031, 604111033, 604111035, 604176592, 604176593, 604176594, 604176595, 604307705, 604307706, 620756993, 620757002, 620757008, 620757013, 620757014, 620757015, 620757768, 620757769, 620757781, 620757782, 620757783, 620758024, 620758025, 620758026, 620758237, 620822536, 620822538, 620822539, 620822540, 620888064, 620888065, 620888082, 620888083, 620888084, 620888085, 620888088, 620888089 };
  private static final int[] fxt = { 620822544, 620822545, 620888104, 620888105, 620888106 };
  public static boolean fxu = avC();
  public static boolean fxv = avB();
  public static final byte[] fxw = null;
  public static final byte[] fxx = null;
  public static final byte[] fxy = null;

  static
  {
    Assert.assertTrue("giveup rtType now ! Use the funcid !", true);
  }

  private static boolean avB()
  {
    for (int i = 0; ; i++)
    {
      int j = fxt.length;
      boolean bool = false;
      if (i < j)
      {
        if (fxt[i] == fxr)
          bool = true;
      }
      else
        return bool;
    }
  }

  private static boolean avC()
  {
    for (int i = 0; ; i++)
    {
      int j = fxs.length;
      boolean bool = false;
      if (i < j)
      {
        if (fxs[i] == fxr)
          bool = true;
      }
      else
        return bool;
    }
  }

  public static void lg(int paramInt)
  {
    fxr = paramInt;
    fxu = avC();
    fxv = avB();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a
 * JD-Core Version:    0.6.2
 */