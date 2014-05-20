package com.tencent.mm.protocal;

import com.tencent.mm.protocal.a.ko;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.cj;

public final class aj extends p
  implements n
{
  public ko fyn = new ko();

  public final int wy()
  {
    return 429;
  }

  public final byte[] wz()
  {
    a(bi.awW());
    this.fyn.fBE = new rv().bM(cj.azP());
    this.fyn.a(m.b(this));
    return this.fyn.toByteArray();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.aj
 * JD-Core Version:    0.6.2
 */