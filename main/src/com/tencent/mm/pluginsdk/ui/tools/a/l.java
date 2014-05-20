package com.tencent.mm.pluginsdk.ui.tools.a;

final class l
{
  private final k fwy;
  private final int[] fwz;

  l(k paramk, int[] paramArrayOfInt)
  {
    if (paramArrayOfInt.length == 0)
      throw new IllegalArgumentException();
    this.fwy = paramk;
    int j = paramArrayOfInt.length;
    if ((j > i) && (paramArrayOfInt[0] == 0))
    {
      while ((i < j) && (paramArrayOfInt[i] == 0))
        i++;
      if (i == j)
      {
        this.fwz = paramk.avd().fwz;
        return;
      }
      this.fwz = new int[j - i];
      System.arraycopy(paramArrayOfInt, i, this.fwz, 0, this.fwz.length);
      return;
    }
    this.fwz = paramArrayOfInt;
  }

  private l a(l paraml)
  {
    if (!this.fwy.equals(paraml.fwy))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if (avg())
      return paraml;
    if (paraml.avg())
      return this;
    Object localObject1 = this.fwz;
    Object localObject2 = paraml.fwz;
    if (localObject1.length > localObject2.length);
    while (true)
    {
      int[] arrayOfInt = new int[localObject1.length];
      int i = localObject1.length - localObject2.length;
      System.arraycopy(localObject1, 0, arrayOfInt, 0, i);
      for (int j = i; j < localObject1.length; j++)
        arrayOfInt[j] = k.aT(localObject2[(j - i)], localObject1[j]);
      return new l(this.fwy, arrayOfInt);
      Object localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
  }

  private boolean avg()
  {
    int i = this.fwz[0];
    boolean bool = false;
    if (i == 0)
      bool = true;
    return bool;
  }

  private int kY(int paramInt)
  {
    return this.fwz[(-1 + this.fwz.length - paramInt)];
  }

  final l aV(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IllegalArgumentException();
    if (paramInt2 == 0)
      return this.fwy.avd();
    int i = this.fwz.length;
    int[] arrayOfInt = new int[i + paramInt1];
    for (int j = 0; j < i; j++)
      arrayOfInt[j] = this.fwy.aU(this.fwz[j], paramInt2);
    return new l(this.fwy, arrayOfInt);
  }

  final int[] avf()
  {
    return this.fwz;
  }

  final l b(l paraml)
  {
    if (!this.fwy.equals(paraml.fwy))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if ((avg()) || (paraml.avg()))
      return this.fwy.avd();
    int[] arrayOfInt1 = this.fwz;
    int i = arrayOfInt1.length;
    int[] arrayOfInt2 = paraml.fwz;
    int j = arrayOfInt2.length;
    int[] arrayOfInt3 = new int[-1 + (i + j)];
    for (int k = 0; k < i; k++)
    {
      int m = arrayOfInt1[k];
      for (int n = 0; n < j; n++)
        arrayOfInt3[(k + n)] = k.aT(arrayOfInt3[(k + n)], this.fwy.aU(m, arrayOfInt2[n]));
    }
    return new l(this.fwy, arrayOfInt3);
  }

  final l[] c(l paraml)
  {
    if (!this.fwy.equals(paraml.fwy))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if (paraml.avg())
      throw new IllegalArgumentException("Divide by 0");
    l locall1 = this.fwy.avd();
    int i = paraml.kY(-1 + paraml.fwz.length);
    int j = this.fwy.kX(i);
    l locall2 = locall1;
    l locall4;
    for (l locall3 = this; (-1 + locall3.fwz.length >= -1 + paraml.fwz.length) && (!locall3.avg()); locall3 = locall3.a(locall4))
    {
      int k = -1 + locall3.fwz.length - (-1 + paraml.fwz.length);
      int m = this.fwy.aU(locall3.kY(-1 + locall3.fwz.length), j);
      locall4 = paraml.aV(k, m);
      locall2 = locall2.a(this.fwy.aS(k, m));
    }
    return new l[] { locall2, locall3 };
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(8 * (-1 + this.fwz.length));
    int i = -1 + this.fwz.length;
    if (i >= 0)
    {
      int j = kY(i);
      label54: int k;
      if (j != 0)
      {
        if (j >= 0)
          break label107;
        localStringBuilder.append(" - ");
        j = -j;
        if ((i == 0) || (j != 1))
        {
          k = this.fwy.kW(j);
          if (k != 0)
            break label124;
          localStringBuilder.append('1');
        }
        label85: if (i != 0)
        {
          if (i != 1)
            break label157;
          localStringBuilder.append('x');
        }
      }
      while (true)
      {
        i--;
        break;
        label107: if (localStringBuilder.length() <= 0)
          break label54;
        localStringBuilder.append(" + ");
        break label54;
        label124: if (k == 1)
        {
          localStringBuilder.append('a');
          break label85;
        }
        localStringBuilder.append("a^");
        localStringBuilder.append(k);
        break label85;
        label157: localStringBuilder.append("x^");
        localStringBuilder.append(i);
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.l
 * JD-Core Version:    0.6.2
 */