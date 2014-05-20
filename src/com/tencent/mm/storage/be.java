package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.dy;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class be extends bz
{
  private dy giE = new dy();

  public be(String paramString1, String paramString2)
  {
    super(new Object[] { paramString1, paramString2 });
    this.giE.fEI = new rw().sn(cj.hW(paramString1));
    this.giE.fEN = new rw().sn(cj.hW(paramString2));
  }

  public final a aDb()
  {
    return this.giE;
  }

  public final int getCmdId()
  {
    return 19;
  }

  public final int zO()
  {
    return 115;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.be
 * JD-Core Version:    0.6.2
 */