package com.tencent.mm.plugin.wallet.pay.model;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.pz;
import com.tencent.mm.protocal.a.qa;
import com.tencent.mm.sdk.platformtools.aa;

public final class d extends x
  implements ab
{
  private m cjh;
  private a cke;

  public d(String paramString)
  {
    b localb = new b();
    localb.a(new pz());
    localb.b(new qa());
    localb.es("/cgi-bin/micromsg-bin/paysubscribe");
    localb.cN(421);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    ((pz)this.cke.wr()).fSy = paramString;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetScenePaySubscribe", "errType:" + paramInt2 + ",errCode:" + paramInt3 + ",errMsg" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 397;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.model.d
 * JD-Core Version:    0.6.2
 */