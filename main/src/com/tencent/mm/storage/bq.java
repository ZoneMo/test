package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.om;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class bq extends bz
{
  private om giQ = new om();

  public bq(String paramString, int paramInt)
  {
    super(arrayOfObject);
    this.giQ.fEI = new rw().sn(cj.hW(paramString));
    this.giQ.fzr = paramInt;
  }

  public final a aDb()
  {
    return this.giQ;
  }

  public final int getCmdId()
  {
    return 14;
  }

  public final int zO()
  {
    return 111;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bq
 * JD-Core Version:    0.6.2
 */