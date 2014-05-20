package com.tencent.mm.o;

import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.xh;
import com.tencent.mm.protocal.a.xi;

public final class b extends x
  implements ab
{
  private m cjh;
  private a cke;

  public b(String paramString)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new xh());
    localb.b(new xi());
    localb.es("/cgi-bin/micromsg-bin/unbindqq");
    localb.cN(253);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    ((xh)this.cke.wr()).fFm = paramString;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 253;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.o.b
 * JD-Core Version:    0.6.2
 */