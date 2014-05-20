package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.cw;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class ay extends bz
{
  private cw giy = new cw();

  public ay(String paramString)
  {
    super(new Object[] { paramString });
    this.giy.fDY = new rw().sn(cj.hW(paramString));
  }

  public final a aDb()
  {
    return this.giy;
  }

  public final int getCmdId()
  {
    return 12;
  }

  public final int zO()
  {
    return 110;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ay
 * JD-Core Version:    0.6.2
 */