package com.tencent.mm.plugin.d.a;

import com.tencent.mm.protocal.a.mf;
import com.tencent.mm.sdk.platformtools.cj;

public final class f extends mf
  implements e
{
  private int dZj;

  public final int YS()
  {
    int i = 1 + this.fAC;
    this.fAC = i;
    return i;
  }

  public final void YW()
  {
    this.dZj = 0;
  }

  public final int YX()
  {
    return this.dZj;
  }

  public final int YY()
  {
    int i = this.fNl;
    if (cj.hX(this.fNk));
    for (int j = "".hashCode(); ; j = this.fNk.hashCode())
      return i + (0x4000000 | j & 0x7FFFFFFF);
  }

  public final int getType()
  {
    return 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.a.f
 * JD-Core Version:    0.6.2
 */