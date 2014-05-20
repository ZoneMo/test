package com.tencent.mm.y;

import com.tencent.mm.model.be;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.xf;
import com.tencent.mm.protocal.a.xg;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;

public final class b extends x
  implements ab
{
  private m cjh;
  private final a cke;

  public b()
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new xf());
    localb.b(new xg());
    localb.es("/cgi-bin/micromsg-bin/unbindlinkedincontact");
    localb.cN(550);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    ((xf)this.cke.wr()).fBl = 1;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneUnBindLinkedinContact", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3);
    this.cke.wr();
    this.cke.ws();
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      be.uz().sr().set(286722, "");
      be.uz().sr().set(286721, "");
      be.uz().sr().set(286723, "");
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 550;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.y.b
 * JD-Core Version:    0.6.2
 */