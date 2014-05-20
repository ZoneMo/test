package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.dv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.LinkedList;

@Deprecated
public final class bd extends bz
{
  private dv giD = new dv();

  public bd(String paramString, int paramInt)
  {
    super(arrayOfObject);
    this.giD.fEI = new rw().sn(cj.hW(paramString));
    this.giD.fBb.add(Integer.valueOf(paramInt));
    this.giD.fAC = 1;
  }

  public final a aDb()
  {
    return this.giD;
  }

  public final int getCmdId()
  {
    return 9;
  }

  public final int zO()
  {
    return 107;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bd
 * JD-Core Version:    0.6.2
 */