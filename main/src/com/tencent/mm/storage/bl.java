package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.nw;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class bl extends bz
{
  private nw giL = new nw();

  public bl(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, String paramString5, String paramString6, String paramString7, int paramInt2)
  {
    super(arrayOfObject);
    this.giL.fEI = new rw().sn(cj.hW(paramString1));
    this.giL.fNa = new rw().sn(cj.hW(paramString2));
    this.giL.fEG = new rw().sn(cj.hW(paramString3));
    this.giL.cqq = paramInt1;
    this.giL.fOO = new rw().sn(cj.hW(paramString5));
    this.giL.fOP = new rw().sn(cj.hW(paramString6));
    this.giL.fOQ = new rw().sn(cj.hW(paramString7));
    this.giL.fEp = paramInt2;
  }

  public final a aDb()
  {
    return this.giL;
  }

  public final int getCmdId()
  {
    return 15;
  }

  public final int zO()
  {
    return 112;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bl
 * JD-Core Version:    0.6.2
 */