package com.tencent.mm.modelsimple;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.tb;
import com.tencent.mm.protocal.a.tc;

public final class an extends x
  implements ab
{
  private m cjh;
  private final a cke;

  public an(String paramString)
  {
    b localb = new b();
    localb.a(new tb());
    localb.b(new tc());
    localb.es("/cgi-bin/micromsg-bin/sendverifyemail");
    localb.cN(108);
    localb.cO(43);
    localb.cP(1000000043);
    this.cke = localb.wx();
    ((tb)this.cke.wr()).fEI = new rw().sn(paramString);
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
    return 108;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.an
 * JD-Core Version:    0.6.2
 */