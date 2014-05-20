package com.tencent.mm.protocal;

import com.tencent.mm.am.b;
import com.tencent.mm.protocal.a.av;
import com.tencent.mm.protocal.a.ou;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class l extends q
  implements o
{
  public ou fxM = new ou();

  public final int getCmdId()
  {
    return 1000000178;
  }

  public final int s(byte[] paramArrayOfByte)
  {
    this.fxM = new ou().bE(paramArrayOfByte);
    m.a(this, this.fxM.ayf());
    j.bk(this.fxM.fQU);
    b localb;
    if (this.fxM.ayf().fAY == 0)
      if (this.fxM.fAX != 0)
      {
        localb = this.fxM.fAW;
        if (localb != null)
          break label112;
      }
    label112: for (String str = null; ; str = localb.avA())
    {
      if (cj.hX(str))
      {
        aa.e("MicroMsg.MMAuth", "retcode 0 but invalid uin or invalid session");
        this.fxM.ayf().fAY = -1;
      }
      return this.fxM.ayf().fAY;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.l
 * JD-Core Version:    0.6.2
 */