package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.oa;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class bn extends bz
{
  private oa giN = new oa();

  public bn(String paramString1, String paramString2)
  {
    super(new Object[] { paramString1, paramString2 });
    this.giN.fze = new rw().sn(cj.hW(paramString1));
    this.giN.fOX = new rw().sn(cj.hW(paramString2));
  }

  public final a aDb()
  {
    return this.giN;
  }

  public final int getCmdId()
  {
    return 27;
  }

  public final int zO()
  {
    return 118;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bn
 * JD-Core Version:    0.6.2
 */