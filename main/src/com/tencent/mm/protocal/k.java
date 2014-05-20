package com.tencent.mm.protocal;

import com.tencent.mm.platformtools.at;
import com.tencent.mm.protocal.a.ot;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class k extends p
  implements n
{
  public ot fxL = new ot();

  public final int getCmdId()
  {
    return 178;
  }

  public final int wy()
  {
    return 380;
  }

  public final byte[] wz()
  {
    if ((10002 == at.cHJ) && (at.cHK > 0))
    {
      at.cHK = 0;
      bi.k("", "", 0);
    }
    a(bi.awV());
    this.fxL.fBE = new rv().bM(cj.azP());
    aa.appenderFlush();
    this.fxL.a(m.b(this));
    this.fxL.fJD = com.tencent.mm.sdk.platformtools.j.bKo;
    if ((10012 == at.cHJ) && (at.cHK > 0))
      this.fxL.fJD = at.cHK;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.fxL.fJD);
    arrayOfObject[1] = Integer.valueOf(com.tencent.mm.sdk.platformtools.j.bKo);
    aa.d("MicroMsg.MMAuth", "NewAuthRequest channel:%d release:%d", arrayOfObject);
    this.fxL.fQz = a.fxq;
    j.bk("");
    return this.fxL.toByteArray();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.k
 * JD-Core Version:    0.6.2
 */