package com.tencent.mm.modelsimple;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.fl;
import com.tencent.mm.protocal.a.fm;
import com.tencent.mm.sdk.platformtools.aa;

public final class v extends x
  implements ab
{
  private m cjh;
  private a cke;

  public v(String paramString, int paramInt)
  {
    this(paramString, paramInt, 0, 0L);
  }

  public v(String paramString, int paramInt1, int paramInt2, long paramLong)
  {
    Cj();
    fl localfl = (fl)this.cke.wr();
    localfl.eBo = paramString;
    localfl.fGn = 0;
    localfl.fGm = "";
    localfl.fyJ = paramInt1;
    localfl.eBm = paramLong;
    localfl.dGR = paramInt2;
    aa.d("MicroMsg.NetSceneExpose", "expose username:" + paramString + ", scene:" + paramInt1 + ", type:" + paramInt2 + " snsId " + paramLong);
  }

  public v(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    Cj();
    fl localfl = (fl)this.cke.wr();
    localfl.eBo = paramString1;
    localfl.fyJ = paramInt1;
    localfl.dGR = paramInt2;
    localfl.fGo = paramString2;
  }

  private void Cj()
  {
    b localb = new b();
    localb.a(new fl());
    localb.b(new fm());
    localb.es("/cgi-bin/micromsg-bin/expose");
    localb.cN(166);
    localb.cO(59);
    localb.cP(1000000059);
    this.cke = localb.wx();
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneExpose", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 166;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.v
 * JD-Core Version:    0.6.2
 */