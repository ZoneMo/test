package com.tencent.mm.pluginsdk.ui.tools.a;

final class n
{
  private static final int[][] fwA = { { 1, 1, 1, 1, 1, 1, 1 }, { 1, 0, 0, 0, 0, 0, 1 }, { 1, 0, 1, 1, 1, 0, 1 }, { 1, 0, 1, 1, 1, 0, 1 }, { 1, 0, 1, 1, 1, 0, 1 }, { 1, 0, 0, 0, 0, 0, 1 }, { 1, 1, 1, 1, 1, 1, 1 } };
  private static final int[][] fwB = { { 1, 1, 1, 1, 1 }, { 1, 0, 0, 0, 1 }, { 1, 0, 1, 0, 1 }, { 1, 0, 0, 0, 1 }, { 1, 1, 1, 1, 1 } };
  private static final int[][] fwC = { { -1, -1, -1, -1, -1, -1, -1 }, { 6, 18, -1, -1, -1, -1, -1 }, { 6, 22, -1, -1, -1, -1, -1 }, { 6, 26, -1, -1, -1, -1, -1 }, { 6, 30, -1, -1, -1, -1, -1 }, { 6, 34, -1, -1, -1, -1, -1 }, { 6, 22, 38, -1, -1, -1, -1 }, { 6, 24, 42, -1, -1, -1, -1 }, { 6, 26, 46, -1, -1, -1, -1 }, { 6, 28, 50, -1, -1, -1, -1 }, { 6, 30, 54, -1, -1, -1, -1 }, { 6, 32, 58, -1, -1, -1, -1 }, { 6, 34, 62, -1, -1, -1, -1 }, { 6, 26, 46, 66, -1, -1, -1 }, { 6, 26, 48, 70, -1, -1, -1 }, { 6, 26, 50, 74, -1, -1, -1 }, { 6, 30, 54, 78, -1, -1, -1 }, { 6, 30, 56, 82, -1, -1, -1 }, { 6, 30, 58, 86, -1, -1, -1 }, { 6, 34, 62, 90, -1, -1, -1 }, { 6, 28, 50, 72, 94, -1, -1 }, { 6, 26, 50, 74, 98, -1, -1 }, { 6, 30, 54, 78, 102, -1, -1 }, { 6, 28, 54, 80, 106, -1, -1 }, { 6, 32, 58, 84, 110, -1, -1 }, { 6, 30, 58, 86, 114, -1, -1 }, { 6, 34, 62, 90, 118, -1, -1 }, { 6, 26, 50, 74, 98, 122, -1 }, { 6, 30, 54, 78, 102, 126, -1 }, { 6, 26, 52, 78, 104, 130, -1 }, { 6, 30, 56, 82, 108, 134, -1 }, { 6, 34, 60, 86, 112, 138, -1 }, { 6, 30, 58, 86, 114, 142, -1 }, { 6, 34, 62, 90, 118, 146, -1 }, { 6, 30, 54, 78, 102, 126, 150 }, { 6, 24, 50, 76, 102, 128, 154 }, { 6, 28, 54, 80, 106, 132, 158 }, { 6, 32, 58, 84, 110, 136, 162 }, { 6, 26, 54, 82, 110, 138, 166 }, { 6, 30, 58, 86, 114, 142, 170 } };
  private static final int[][] fwD = { { 8, 0 }, { 8, 1 }, { 8, 2 }, { 8, 3 }, { 8, 4 }, { 8, 5 }, { 8, 7 }, { 8, 8 }, { 7, 8 }, { 5, 8 }, { 4, 8 }, { 3, 8 }, { 2, 8 }, { 1, 8 }, { 0, 8 } };

  private static void a(int paramInt1, int paramInt2, e parame)
  {
    for (int i = 0; i < 8; i++)
    {
      if (!la(parame.aR(paramInt1 + i, paramInt2)))
        throw new w();
      parame.set(paramInt1 + i, paramInt2, 0);
    }
  }

  private static void a(b paramb, int paramInt, e parame)
  {
    int i = -1 + parame.getWidth();
    int j = -1 + parame.getHeight();
    int k = -1;
    int m = 0;
    int n;
    int i1;
    int i2;
    if (i > 0)
    {
      if (i != 6)
        break label473;
      int i13 = i - 1;
      n = j;
      i1 = i13;
      i2 = m;
    }
    while (true)
      if ((n >= 0) && (n < parame.getHeight()))
      {
        int i6 = 0;
        if (i6 < 2)
        {
          int i7 = i1 - i6;
          int i8;
          int i9;
          label215: int i10;
          if (la(parame.aR(i7, n)))
          {
            if (i2 < paramb.getSize())
            {
              boolean bool2 = paramb.get(i2);
              i8 = i2 + 1;
              bool1 = bool2;
            }
            while (paramInt != -1)
              switch (paramInt)
              {
              default:
                throw new IllegalArgumentException("Invalid mask pattern: " + paramInt);
                i8 = i2;
                bool1 = false;
                break;
              case 0:
                i9 = 0x1 & n + i7;
                if (i9 != 0)
                  break label368;
                i10 = 1;
                label223: if (i10 != 0)
                  if (bool1)
                    break label374;
                break;
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              }
          }
          label368: label374: for (boolean bool1 = true; ; bool1 = false)
          {
            parame.set(i7, n, bool1);
            i2 = i8;
            i6++;
            break;
            i9 = n & 0x1;
            break label215;
            i9 = i7 % 3;
            break label215;
            i9 = (n + i7) % 3;
            break label215;
            i9 = 0x1 & (n >>> 1) + i7 / 3;
            break label215;
            int i12 = n * i7;
            i9 = (i12 & 0x1) + i12 % 3;
            break label215;
            int i11 = n * i7;
            i9 = 0x1 & (i11 & 0x1) + i11 % 3;
            break label215;
            i9 = 0x1 & n * i7 % 3 + (0x1 & n + i7);
            break label215;
            i10 = 0;
            break label223;
          }
        }
        n += k;
      }
      else
      {
        int i3 = -k;
        int i4 = n + i3;
        int i5 = i1 - 2;
        k = i3;
        m = i2;
        j = i4;
        i = i5;
        break;
        if (m != paramb.getSize())
          throw new w("Not all bits consumed: " + m + '/' + paramb.getSize());
        return;
        label473: n = j;
        i1 = i;
        i2 = m;
      }
  }

  static void a(b paramb, j paramj, t paramt, int paramInt, e parame)
  {
    parame.ava();
    int i = fwA[0].length;
    c(0, 0, parame);
    c(parame.getWidth() - i, 0, parame);
    c(0, parame.getWidth() - i, parame);
    a(0, 7, parame);
    a(-8 + parame.getWidth(), 7, parame);
    a(0, -8 + parame.getWidth(), parame);
    b(7, 0, parame);
    b(-1 + (-7 + parame.getHeight()), 0, parame);
    b(7, -7 + parame.getHeight(), parame);
    if (parame.aR(8, -8 + parame.getHeight()) == 0)
      throw new w();
    parame.set(8, -8 + parame.getHeight(), 1);
    if (paramt.avi() >= 2)
    {
      int i2 = -1 + paramt.avi();
      int[] arrayOfInt = fwC[i2];
      int i3 = fwC[i2].length;
      for (int i4 = 0; i4 < i3; i4++)
        for (int i5 = 0; i5 < i3; i5++)
        {
          int i6 = arrayOfInt[i4];
          int i7 = arrayOfInt[i5];
          if ((i7 != -1) && (i6 != -1) && (la(parame.aR(i7, i6))))
          {
            int i8 = i7 - 2;
            int i9 = i6 - 2;
            for (int i10 = 0; i10 < 5; i10++)
              for (int i11 = 0; i11 < 5; i11++)
                parame.set(i8 + i11, i9 + i10, fwB[i10][i11]);
          }
        }
    }
    for (int j = 8; j < -8 + parame.getWidth(); j++)
    {
      int i1 = (j + 1) % 2;
      if (la(parame.aR(j, 6)))
        parame.set(j, 6, i1);
      if (la(parame.aR(6, j)))
        parame.set(6, j, i1);
    }
    b localb1 = new b();
    if ((paramInt >= 0) && (paramInt < 8));
    for (int k = 1; k == 0; k = 0)
      throw new w("Invalid mask pattern");
    int m = paramInt | paramj.avb() << 3;
    localb1.aP(m, 5);
    localb1.aP(aW(m, 1335), 10);
    b localb2 = new b();
    localb2.aP(21522, 15);
    localb1.b(localb2);
    if (localb1.getSize() != 15)
      throw new w("should not happen but we got: " + localb1.getSize());
    int n = 0;
    if (n < localb1.getSize())
    {
      boolean bool = localb1.get(-1 + localb1.getSize() - n);
      parame.set(fwD[n][0], fwD[n][1], bool);
      if (n < 8)
        parame.set(-1 + (parame.getWidth() - n), 8, bool);
      while (true)
      {
        n++;
        break;
        parame.set(8, -7 + parame.getHeight() + (n - 8), bool);
      }
    }
    a(paramt, parame);
    a(paramb, paramInt, parame);
  }

  private static void a(t paramt, e parame)
  {
    if (paramt.avi() < 7);
    while (true)
    {
      return;
      b localb = new b();
      localb.aP(paramt.avi(), 6);
      localb.aP(aW(paramt.avi(), 7973), 12);
      if (localb.getSize() != 18)
        throw new w("should not happen but we got: " + localb.getSize());
      int i = 17;
      int j = 0;
      while (j < 6)
      {
        int k = i;
        for (int m = 0; m < 3; m++)
        {
          boolean bool = localb.get(k);
          k--;
          parame.set(j, m + (-11 + parame.getHeight()), bool);
          parame.set(m + (-11 + parame.getHeight()), j, bool);
        }
        j++;
        i = k;
      }
    }
  }

  private static int aW(int paramInt1, int paramInt2)
  {
    int i = kZ(paramInt2);
    int j = paramInt1 << i - 1;
    while (kZ(j) >= i)
      j ^= paramInt2 << kZ(j) - i;
    return j;
  }

  private static void b(int paramInt1, int paramInt2, e parame)
  {
    for (int i = 0; i < 7; i++)
    {
      if (!la(parame.aR(paramInt1, paramInt2 + i)))
        throw new w();
      parame.set(paramInt1, paramInt2 + i, 0);
    }
  }

  private static void c(int paramInt1, int paramInt2, e parame)
  {
    for (int i = 0; i < 7; i++)
      for (int j = 0; j < 7; j++)
        parame.set(paramInt1 + j, paramInt2 + i, fwA[i][j]);
  }

  private static int kZ(int paramInt)
  {
    for (int i = 0; paramInt != 0; i++)
      paramInt >>>= 1;
    return i;
  }

  private static boolean la(int paramInt)
  {
    return paramInt == -1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.n
 * JD-Core Version:    0.6.2
 */