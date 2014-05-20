package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.protocal.a.ob;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class ax extends bz
{
  private ob gix = new ob();

  public ax(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2, int paramInt3, String paramString5, String paramString6, String paramString7, int paramInt4, String paramString8, int paramInt5, int paramInt6, String paramString9, String paramString10, String paramString11, String paramString12, int paramInt7)
  {
    super(arrayOfObject);
    this.gix.fEI = new rw().sn(cj.hW(paramString1));
    this.gix.fNa = new rw().sn(cj.hW(paramString2));
    this.gix.fEG = new rw().sn(cj.hW(paramString3));
    this.gix.fEH = new rw().sn(cj.hW(paramString4));
    this.gix.cqq = paramInt1;
    this.gix.fEj = paramInt2;
    this.gix.fEk = paramInt3;
    this.gix.fOO = new rw().sn(cj.hW(paramString5));
    this.gix.fOP = new rw().sn(cj.hW(paramString6));
    this.gix.fOQ = new rw().sn(cj.hW(paramString4));
    this.gix.fEp = paramInt4;
    this.gix.fOY = new rw().sn(cj.hW(paramString8));
    this.gix.fEt = paramInt5;
    this.gix.cqs = paramInt6;
    this.gix.cqr = cj.hW(paramString9);
    this.gix.Tv = cj.hW(paramString10);
    this.gix.Tu = cj.hW(paramString11);
    this.gix.fNr = cj.hW(paramString12);
    this.gix.fNt = paramInt7;
    this.gix.fOT = 0;
    this.gix.fzx = new rv();
  }

  public final a aDb()
  {
    return this.gix;
  }

  public final int getCmdId()
  {
    return 2;
  }

  public final int zO()
  {
    return 101;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ax
 * JD-Core Version:    0.6.2
 */