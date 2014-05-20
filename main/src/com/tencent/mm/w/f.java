package com.tencent.mm.w;

public final class f
{
  public static e a(e parame)
  {
    if (parame == null)
      parame = null;
    e locale;
    do
    {
      do
        return parame;
      while (!parame.AM());
      locale = ag.Ba().dE(parame.AK());
    }
    while (locale == null);
    return locale;
  }

  public static boolean b(e parame)
  {
    if (parame == null);
    int i;
    int j;
    int k;
    do
    {
      return false;
      i = parame.getOffset();
      j = parame.vR();
      k = parame.AH();
      if (parame.AM())
      {
        e locale = ag.Ba().dE(parame.AK());
        i = locale.getOffset();
        j = locale.vR();
        k = locale.AH();
      }
      if (j == 0)
        return true;
    }
    while (((i != j) || (j == 0)) && (k == 0));
    return true;
  }

  public static String c(e parame)
  {
    if (parame == null)
      return "";
    if (parame.AM())
    {
      e locale = ag.Ba().dE(parame.AK());
      if (locale == null)
        return "";
      return locale.AI();
    }
    return parame.AI();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.f
 * JD-Core Version:    0.6.2
 */