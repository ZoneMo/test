package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.dp;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class bb extends bz
{
  private dp giB = new dp();

  public bb(String paramString)
  {
    super(new Object[] { paramString });
    this.giB.fEI = new rw().sn(cj.hW(paramString));
  }

  public final a aDb()
  {
    return this.giB;
  }

  public final int getCmdId()
  {
    return 4;
  }

  public final int zO()
  {
    return 102;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bb
 * JD-Core Version:    0.6.2
 */