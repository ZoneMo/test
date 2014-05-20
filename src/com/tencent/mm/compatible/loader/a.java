package com.tencent.mm.compatible.loader;

public final class a
{
  private static Object[] ceP = new Object[0];
  private static Object[] ceQ = new Object[73];

  public static int bD(int paramInt)
  {
    int i = paramInt * 4;
    for (int j = 4; ; j++)
      if (j < 32)
      {
        if (i <= -12 + (1 << j))
          i = -12 + (1 << j);
      }
      else
        return i / 4;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.loader.a
 * JD-Core Version:    0.6.2
 */