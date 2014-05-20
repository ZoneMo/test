package com.tencent.mm.plugin.d.b;

import com.tencent.mm.protocal.a.mg;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.bi;
import com.tencent.mm.protocal.m;
import com.tencent.mm.protocal.n;
import com.tencent.mm.protocal.p;
import com.tencent.mm.sdk.platformtools.cj;

public final class b extends p
  implements n
{
  public mg dZq = new mg();

  public final int getCmdId()
  {
    return 218;
  }

  public final int wy()
  {
    return 443;
  }

  public final byte[] wz()
  {
    a(bi.awW());
    this.dZq.fBE = new rv().bM(cj.azP());
    this.dZq.a(m.b(this));
    return this.dZq.toByteArray();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.b.b
 * JD-Core Version:    0.6.2
 */