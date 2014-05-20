package com.tencent.mm.pluginsdk.ui.tools.a;

import java.util.ArrayList;
import java.util.List;

public final class s
{
  private final List fwV;
  private final k fwy;

  public s(k paramk)
  {
    this.fwy = paramk;
    this.fwV = new ArrayList();
    this.fwV.add(new l(paramk, new int[] { 1 }));
  }

  private l lc(int paramInt)
  {
    if (paramInt >= this.fwV.size())
    {
      l locall1 = (l)this.fwV.get(-1 + this.fwV.size());
      int i = this.fwV.size();
      l locall2 = locall1;
      for (int j = i; j <= paramInt; j++)
      {
        k localk = this.fwy;
        int[] arrayOfInt = new int[2];
        arrayOfInt[0] = 1;
        arrayOfInt[1] = this.fwy.kV(j - 1 + this.fwy.ave());
        locall2 = locall2.b(new l(localk, arrayOfInt));
        this.fwV.add(locall2);
      }
    }
    return (l)this.fwV.get(paramInt);
  }

  public final void b(int[] paramArrayOfInt, int paramInt)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException("No error correction bytes");
    int i = paramArrayOfInt.length - paramInt;
    if (i <= 0)
      throw new IllegalArgumentException("No data bytes provided");
    l locall = lc(paramInt);
    int[] arrayOfInt1 = new int[i];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt1, 0, i);
    int[] arrayOfInt2 = new l(this.fwy, arrayOfInt1).aV(paramInt, 1).c(locall)[1].avf();
    int j = paramInt - arrayOfInt2.length;
    for (int k = 0; k < j; k++)
      paramArrayOfInt[(i + k)] = 0;
    System.arraycopy(arrayOfInt2, 0, paramArrayOfInt, i + j, arrayOfInt2.length);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.s
 * JD-Core Version:    0.6.2
 */