package com.tencent.mm.protocal;

import com.tencent.mm.protocal.a.lc;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.cj;

public final class am extends p
  implements n
{
  public lc fyp = new lc();

  public final int getCmdId()
  {
    return 48;
  }

  public final int wy()
  {
    return 107;
  }

  public final byte[] wz()
  {
    a(bi.awW());
    this.fyp.fBE = new rv().bM(cj.azP());
    this.fyp.a(m.b(this));
    return this.fyp.toByteArray();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.am
 * JD-Core Version:    0.6.2
 */