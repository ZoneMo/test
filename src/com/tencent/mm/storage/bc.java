package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.dq;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class bc extends bz
{
  private dq giC = new dq();

  public bc(String paramString, int paramInt)
  {
    super(arrayOfObject);
    this.giC.fEI = new rw().sn(cj.hW(paramString));
    this.giC.fEK = paramInt;
  }

  public final a aDb()
  {
    return this.giC;
  }

  public final int getCmdId()
  {
    return 8;
  }

  public final int zO()
  {
    return 105;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bc
 * JD-Core Version:    0.6.2
 */