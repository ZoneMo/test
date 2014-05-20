package com.tencent.mm.protocal;

import com.tencent.mm.protocal.a.ie;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.cj;

public final class ad extends p
  implements n
{
  public ie fyj = new ie();

  public final int getCmdId()
  {
    return 179;
  }

  public final int wy()
  {
    return 381;
  }

  public final byte[] wz()
  {
    a(bi.awW());
    this.fyj.fBE = new rv().bM(cj.azP());
    this.fyj.fKu = bi.awV().axb();
    this.fyj.a(m.b(this));
    return this.fyj.toByteArray();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.ad
 * JD-Core Version:    0.6.2
 */