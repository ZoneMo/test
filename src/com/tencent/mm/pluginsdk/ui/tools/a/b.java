package com.tencent.mm.pluginsdk.ui.tools.a;

public final class b
{
  private int[] fvg = new int[1];
  private int size = 0;

  private void ensureCapacity(int paramInt)
  {
    if (paramInt > this.fvg.length << 5)
    {
      int[] arrayOfInt = new int[paramInt + 31 >> 5];
      System.arraycopy(this.fvg, 0, arrayOfInt, 0, this.fvg.length);
      this.fvg = arrayOfInt;
    }
  }

  public final void a(b paramb)
  {
    int i = paramb.size;
    ensureCapacity(i + this.size);
    for (int j = 0; j < i; j++)
      cQ(paramb.get(j));
  }

  public final void aP(int paramInt1, int paramInt2)
  {
    if ((paramInt2 < 0) || (paramInt2 > 32))
      throw new IllegalArgumentException("Num bits must be between 0 and 32");
    ensureCapacity(paramInt2 + this.size);
    if (paramInt2 > 0)
    {
      if ((0x1 & paramInt1 >> paramInt2 - 1) == 1);
      for (boolean bool = true; ; bool = false)
      {
        cQ(bool);
        paramInt2--;
        break;
      }
    }
  }

  public final int auW()
  {
    return 7 + this.size >> 3;
  }

  public final void b(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    int i = 0;
    int m;
    for (int j = paramInt1; i < paramInt2; j = m)
    {
      int k = 0;
      m = j;
      int n = 0;
      while (k < 8)
      {
        if (get(m))
          n |= 1 << 7 - k;
        m++;
        k++;
      }
      paramArrayOfByte[(i + 0)] = ((byte)n);
      i++;
    }
  }

  public final void b(b paramb)
  {
    if (this.fvg.length != paramb.fvg.length)
      throw new IllegalArgumentException("Sizes don't match");
    for (int i = 0; i < this.fvg.length; i++)
    {
      int[] arrayOfInt = this.fvg;
      arrayOfInt[i] ^= paramb.fvg[i];
    }
  }

  public final void cQ(boolean paramBoolean)
  {
    ensureCapacity(1 + this.size);
    if (paramBoolean)
    {
      int[] arrayOfInt = this.fvg;
      int i = this.size >> 5;
      arrayOfInt[i] |= 1 << (0x1F & this.size);
    }
    this.size = (1 + this.size);
  }

  public final boolean get(int paramInt)
  {
    return (this.fvg[(paramInt >> 5)] & 1 << (paramInt & 0x1F)) != 0;
  }

  public final int getSize()
  {
    return this.size;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(this.size);
    int i = 0;
    if (i < this.size)
    {
      if ((i & 0x7) == 0)
        localStringBuilder.append(' ');
      if (get(i));
      for (char c = 'X'; ; c = '.')
      {
        localStringBuilder.append(c);
        i++;
        break;
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.b
 * JD-Core Version:    0.6.2
 */