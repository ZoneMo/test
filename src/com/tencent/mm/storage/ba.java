package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.dm;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class ba extends bz
{
  private dm giA = new dm();

  public ba(String paramString)
  {
    super(new Object[] { paramString });
    this.giA.fEI = new rw().sn(cj.hW(paramString));
  }

  public final a aDb()
  {
    return this.giA;
  }

  public final int getCmdId()
  {
    return 7;
  }

  public final int zO()
  {
    return 106;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ba
 * JD-Core Version:    0.6.2
 */