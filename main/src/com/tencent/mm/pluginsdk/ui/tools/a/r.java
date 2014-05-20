package com.tencent.mm.pluginsdk.ui.tools.a;

import java.util.Map;

public final class r
{
  private static c a(p paramp, int paramInt1, int paramInt2, int paramInt3)
  {
    e locale = paramp.avh();
    if (locale == null)
      throw new IllegalStateException();
    int i = locale.getWidth();
    int j = locale.getHeight();
    int k = i + (paramInt3 << 1);
    int m = j + (paramInt3 << 1);
    int n = Math.max(paramInt1, k);
    int i1 = Math.max(paramInt2, m);
    int i2 = Math.min(n / k, i1 / m);
    int i3 = (n - i * i2) / 2;
    int i4 = (i1 - j * i2) / 2;
    c localc = new c(n, i1);
    int i5 = i4;
    int i9;
    for (int i6 = 0; i6 < j; i6 = i9)
    {
      int i7 = 0;
      int i8 = i3;
      while (i7 < i)
      {
        if (locale.aR(i7, i6) == 1)
          localc.e(i8, i5, i2, i2);
        i7++;
        i8 += i2;
      }
      i9 = i6 + 1;
      i5 += i2;
    }
    return localc;
  }

  public static c a(String paramString, a parama, int paramInt1, int paramInt2, Map paramMap)
  {
    if (paramString.length() == 0)
      throw new IllegalArgumentException("Found empty contents");
    if (parama != a.fuZ)
      throw new IllegalArgumentException("Can only encode QR_CODE, but got " + parama);
    if ((paramInt1 < 0) || (paramInt2 < 0))
      throw new IllegalArgumentException("Requested dimensions are too small: " + paramInt1 + 'x' + paramInt2);
    Object localObject = j.fwg;
    Integer localInteger;
    if (paramMap != null)
    {
      j localj = (j)paramMap.get(g.fvR);
      if (localj != null)
        localObject = localj;
      localInteger = (Integer)paramMap.get(g.fvW);
      if (localInteger == null);
    }
    for (int i = localInteger.intValue(); ; i = 4)
      return a(h.a(paramString, (j)localObject, paramMap), paramInt1, paramInt2, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.r
 * JD-Core Version:    0.6.2
 */