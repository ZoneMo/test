package com.tencent.map.a.a;

import android.content.Context;
import com.tencent.map.location.s;

public final class a
{
  private static s Tb = s.mb();
  private static a Tc;

  public static boolean a(Context paramContext, b paramb)
  {
    return Tb.b(paramContext, paramb);
  }

  public static boolean g(String paramString1, String paramString2)
  {
    return Tb.a(paramString1, paramString2);
  }

  public static a lO()
  {
    try
    {
      if (Tc == null)
        Tc = new a();
      a locala = Tc;
      return locala;
    }
    finally
    {
    }
  }

  public static void lP()
  {
    Tb.lX();
  }

  public static void lQ()
  {
    Tb.mc();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.a.a.a
 * JD-Core Version:    0.6.2
 */