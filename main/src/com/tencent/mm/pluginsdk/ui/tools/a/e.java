package com.tencent.mm.pluginsdk.ui.tools.a;

import java.lang.reflect.Array;

public final class e
{
  private final byte[][] fvk;
  private final int height;
  private final int width;

  public e(int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = { paramInt2, paramInt1 };
    this.fvk = ((byte[][])Array.newInstance(Byte.TYPE, arrayOfInt));
    this.width = paramInt1;
    this.height = paramInt2;
  }

  public final byte aR(int paramInt1, int paramInt2)
  {
    return this.fvk[paramInt2][paramInt1];
  }

  public final byte[][] auZ()
  {
    return this.fvk;
  }

  public final void ava()
  {
    for (int i = 0; i < this.height; i++)
      for (int j = 0; j < this.width; j++)
        this.fvk[i][j] = -1;
  }

  public final int getHeight()
  {
    return this.height;
  }

  public final int getWidth()
  {
    return this.width;
  }

  public final void set(int paramInt1, int paramInt2, int paramInt3)
  {
    this.fvk[paramInt2][paramInt1] = ((byte)paramInt3);
  }

  public final void set(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    byte[] arrayOfByte = this.fvk[paramInt2];
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      arrayOfByte[paramInt1] = ((byte)i);
      return;
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(2 + 2 * this.width * this.height);
    for (int i = 0; i < this.height; i++)
    {
      int j = 0;
      if (j < this.width)
      {
        switch (this.fvk[i][j])
        {
        default:
          localStringBuilder.append("  ");
        case 0:
        case 1:
        }
        while (true)
        {
          j++;
          break;
          localStringBuilder.append(" 0");
          continue;
          localStringBuilder.append(" 1");
        }
      }
      localStringBuilder.append('\n');
    }
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.e
 * JD-Core Version:    0.6.2
 */