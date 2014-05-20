package com.tencent.mapapi.map;

final class bk extends ae
{
  bk(bi parambi)
  {
  }

  public final String a(int paramInt, int[] paramArrayOfInt)
  {
    String str = null;
    if (paramArrayOfInt == null);
    while (true)
    {
      return String.format("http://pwh.map.qq.com/ih?dt=tile&rt=m256&c=%s", new Object[] { str });
      int i = paramArrayOfInt.length;
      str = null;
      if (i >= 3)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        int j = i / 3;
        for (int k = 0; k < j; k++)
        {
          if (k != 0)
            localStringBuilder.append(",");
          int m = paramArrayOfInt[(k * 3)];
          int n = paramArrayOfInt[(1 + k * 3)];
          int i1 = paramArrayOfInt[(2 + k * 3)];
          int i2 = (int)Math.floor(m / paramInt);
          int i3 = (int)Math.floor(n / paramInt);
          localStringBuilder.append(i1 + "/" + i2 + "/" + i3 + "/" + m + "_" + n);
        }
        str = localStringBuilder.toString();
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.bk
 * JD-Core Version:    0.6.2
 */