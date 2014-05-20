package com.tencent.mm.pluginsdk.ui.tools.a;

public final class c
{
  private final int[] fvg;
  private final int fvh;
  private final int height;
  private final int width;

  public c(int paramInt1, int paramInt2)
  {
    if ((paramInt1 <= 0) || (paramInt2 <= 0))
      throw new IllegalArgumentException("Both dimensions must be greater than 0");
    this.width = paramInt1;
    this.height = paramInt2;
    this.fvh = (paramInt1 + 31 >> 5);
    this.fvg = new int[paramInt2 * this.fvh];
  }

  public final boolean aQ(int paramInt1, int paramInt2)
  {
    int i = paramInt2 * this.fvh + (paramInt1 >> 5);
    return (0x1 & this.fvg[i] >>> (paramInt1 & 0x1F)) != 0;
  }

  public final void e(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 < 0) || (paramInt1 < 0))
      throw new IllegalArgumentException("Left and top must be nonnegative");
    if ((paramInt4 <= 0) || (paramInt3 <= 0))
      throw new IllegalArgumentException("Height and width must be at least 1");
    int i = paramInt1 + paramInt3;
    int j = paramInt2 + paramInt4;
    if ((j > this.height) || (i > this.width))
      throw new IllegalArgumentException("The region must fit inside the matrix");
    while (true)
    {
      paramInt2++;
      if (paramInt2 >= j)
        break;
      int k = paramInt2 * this.fvh;
      for (int m = paramInt1; m < i; m++)
      {
        int[] arrayOfInt = this.fvg;
        int n = k + (m >> 5);
        arrayOfInt[n] |= 1 << (m & 0x1F);
      }
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof c));
    c localc;
    do
    {
      return false;
      localc = (c)paramObject;
    }
    while ((this.width != localc.width) || (this.height != localc.height) || (this.fvh != localc.fvh) || (this.fvg.length != localc.fvg.length));
    for (int i = 0; ; i++)
    {
      if (i >= this.fvg.length)
        break label92;
      if (this.fvg[i] != localc.fvg[i])
        break;
    }
    label92: return true;
  }

  public final int hashCode()
  {
    int i = 31 * (31 * (31 * this.width + this.width) + this.height) + this.fvh;
    int[] arrayOfInt = this.fvg;
    int j = arrayOfInt.length;
    for (int k = 0; k < j; k++)
      i = arrayOfInt[k] + i * 31;
    return i;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(this.height * (1 + this.width));
    for (int i = 0; i < this.height; i++)
    {
      int j = 0;
      if (j < this.width)
      {
        if (aQ(j, i));
        for (String str = "X "; ; str = "  ")
        {
          localStringBuilder.append(str);
          j++;
          break;
        }
      }
      localStringBuilder.append('\n');
    }
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.c
 * JD-Core Version:    0.6.2
 */