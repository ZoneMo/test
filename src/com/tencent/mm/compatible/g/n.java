package com.tencent.mm.compatible.g;

import android.os.Build;
import android.os.Build.VERSION;
import com.tencent.mm.compatible.c.m;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.sdk.platformtools.cj;

public final class n
{
  public static String bm(String paramString)
  {
    if (paramString == null);
    do
    {
      do
      {
        do
          return paramString;
        while (s.ceN.ced == 2);
        if (s.ceN.ced != 1)
          break;
      }
      while (!paramString.toString().contains("\n"));
      return paramString.toString().replace("\n", " ");
    }
    while ((Build.VERSION.SDK_INT != 16) || (!paramString.toString().contains("\n")) || (cj.R(Build.MANUFACTURER, "").toLowerCase().indexOf("meizu".toLowerCase()) >= 0));
    return paramString.toString().replace("\n", " ");
  }

  public static CharSequence l(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null);
    do
    {
      do
      {
        do
          return paramCharSequence;
        while (s.ceN.ced == 2);
        if (s.ceN.ced != 1)
          break;
      }
      while (!paramCharSequence.toString().contains("\n"));
      return paramCharSequence.toString().replace("\n", "                                                                                                                                                                                                                                                                                                                        ");
    }
    while ((Build.VERSION.SDK_INT != 16) || (!paramCharSequence.toString().contains("\n")) || (cj.R(Build.MANUFACTURER, "").toLowerCase().indexOf("meizu".toLowerCase()) >= 0));
    return paramCharSequence.toString().replace("\n", "                                                                                                                                                                                                                                                                                                                        ");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.g.n
 * JD-Core Version:    0.6.2
 */