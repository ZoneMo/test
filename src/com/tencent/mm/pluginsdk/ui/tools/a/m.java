package com.tencent.mm.pluginsdk.ui.tools.a;

final class m
{
  static int a(e parame)
  {
    return a(parame, true) + a(parame, false);
  }

  private static int a(e parame, boolean paramBoolean)
  {
    int i;
    int j;
    label18: byte[][] arrayOfByte;
    int k;
    int m;
    if (paramBoolean)
    {
      i = parame.getHeight();
      if (!paramBoolean)
        break label120;
      j = parame.getWidth();
      arrayOfByte = parame.auZ();
      k = 0;
      m = 0;
    }
    while (true)
    {
      if (k >= i)
        break label199;
      int n = -1;
      int i1 = 0;
      int i2 = 0;
      label45: if (i1 < j)
      {
        int i3;
        label65: int i9;
        int i4;
        int i6;
        if (paramBoolean)
        {
          i3 = arrayOfByte[k][i1];
          if (i3 != n)
            break label141;
          int i8 = i2 + 1;
          i9 = n;
          i4 = i8;
          i6 = m;
        }
        label120: int i5;
        for (int i7 = i9; ; i7 = i5)
        {
          i1++;
          i2 = i4;
          n = i7;
          m = i6;
          break label45;
          i = parame.getWidth();
          break;
          j = parame.getHeight();
          break label18;
          i3 = arrayOfByte[i1][k];
          break label65;
          if (i2 >= 5)
            m += 3 + (i2 - 5);
          i4 = 1;
          i5 = i3;
          i6 = m;
        }
      }
      label141: if (i2 >= 5)
        m += 3 + (i2 - 5);
      k++;
    }
    label199: return m;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.m
 * JD-Core Version:    0.6.2
 */