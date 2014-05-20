package com.tencent.mm.storage;

import com.tencent.mm.a.c;
import com.tencent.mm.am.a;
import com.tencent.mm.am.b;
import com.tencent.mm.protocal.a.oq;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;

@Deprecated
public final class bt extends bz
{
  private oq giT = new oq();

  public bt(int paramInt1, String paramString1, String paramString2, int paramInt2, String paramString3, String paramString4, String paramString5, int paramInt3, int paramInt4, int paramInt5, String paramString6, String paramString7, String paramString8, int paramInt6, String paramString9, int paramInt7, String paramString10, int paramInt8)
  {
    super(arrayOfObject);
    this.giT.fPG = paramInt1;
    this.giT.fEI = new rw().sn(cj.hW(paramString1));
    this.giT.fNa = new rw().sn(cj.hW(paramString2));
    this.giT.fPH = paramInt2;
    this.giT.fPI = new rw().sn(cj.hW(paramString3));
    this.giT.fPJ = new rw().sn(cj.hW(paramString4));
    this.giT.fzr = paramInt3;
    byte[] arrayOfByte1 = c.g(cj.hW(paramString5), 0, -1);
    oq localoq1 = this.giT;
    byte[] arrayOfByte2;
    oq localoq2;
    if (arrayOfByte1 == null)
    {
      arrayOfByte2 = new byte[0];
      localoq1.fPE = new b(arrayOfByte2);
      localoq2 = this.giT;
      if (arrayOfByte1 != null)
        break label435;
    }
    label435: for (int i = 0; ; i = arrayOfByte1.length)
    {
      localoq2.fPD = i;
      this.giT.cqq = paramInt4;
      this.giT.cqs = paramInt5;
      this.giT.cqr = cj.hW(paramString6);
      this.giT.Tv = cj.hW(paramString7);
      this.giT.Tu = cj.hW(paramString8);
      this.giT.fPK = paramInt6;
      this.giT.fNr = cj.hW(paramString9);
      this.giT.fPP = paramInt7;
      this.giT.cqt = cj.hW(paramString10);
      this.giT.fNt = paramInt8;
      this.giT.fNs = "";
      return;
      arrayOfByte2 = arrayOfByte1;
      break;
    }
  }

  public final a aDb()
  {
    return this.giT;
  }

  public final int getCmdId()
  {
    return 1;
  }

  public final int zO()
  {
    return 104;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bt
 * JD-Core Version:    0.6.2
 */