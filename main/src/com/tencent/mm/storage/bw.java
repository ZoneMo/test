package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.qv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class bw extends bz
{
  private qv giW = new qv();

  public bw(String paramString1, String paramString2)
  {
    super(new Object[] { paramString1, paramString2 });
    this.giW.fEI = new rw().sn(cj.hW(paramString1));
    this.giW.fze = new rw().sn(cj.hW(paramString2));
  }

  public final a aDb()
  {
    return this.giW;
  }

  public final int getCmdId()
  {
    return 16;
  }

  public final int zO()
  {
    return 113;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bw
 * JD-Core Version:    0.6.2
 */