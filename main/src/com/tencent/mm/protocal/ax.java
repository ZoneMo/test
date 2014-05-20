package com.tencent.mm.protocal;

import com.tencent.mm.protocal.a.pb;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.j;

public final class ax extends p
  implements n
{
  public pb fyv = new pb();

  public final int getCmdId()
  {
    return 0;
  }

  public final int wy()
  {
    return 126;
  }

  public final byte[] wz()
  {
    a(bi.awW());
    this.fyv.fBE = new rv().bM(cj.azP());
    this.fyv.a(m.b(this));
    this.fyv.fRm = j.bKo;
    return this.fyv.toByteArray();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.ax
 * JD-Core Version:    0.6.2
 */