package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.nz;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class bm extends bz
{
  private nz giM = new nz();

  public bm(String paramString, int paramInt)
  {
    super(arrayOfObject);
    this.giM.fze = new rw().sn(cj.hW(paramString));
    this.giM.fzr = paramInt;
  }

  public final a aDb()
  {
    return this.giM;
  }

  public final int getCmdId()
  {
    return 20;
  }

  public final int zO()
  {
    return 114;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bm
 * JD-Core Version:    0.6.2
 */