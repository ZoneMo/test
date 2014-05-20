package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.pn;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class bu extends bz
{
  private pn giU = new pn();

  public bu(String paramString)
  {
    super(new Object[] { paramString });
    this.giU.fDY = new rw().sn(cj.hW(paramString));
  }

  public final a aDb()
  {
    return this.giU;
  }

  public final int getCmdId()
  {
    return 11;
  }

  public final int zO()
  {
    return 109;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bu
 * JD-Core Version:    0.6.2
 */