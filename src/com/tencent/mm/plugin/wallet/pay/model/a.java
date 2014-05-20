package com.tencent.mm.plugin.wallet.pay.model;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.cc;
import com.tencent.mm.protocal.a.cd;
import com.tencent.mm.sdk.platformtools.aa;

public final class a extends x
  implements ab
{
  private m cjh;
  private com.tencent.mm.n.a cke;

  public a(String paramString1, String paramString2)
  {
    b localb = new b();
    localb.a(new cc());
    localb.b(new cd());
    localb.es("/cgi-bin/micromsg-bin/cancelqrpay");
    localb.cN(421);
    localb.cO(198);
    localb.cP(1000000198);
    this.cke = localb.wx();
    cc localcc = (cc)this.cke.wr();
    localcc.fDa = paramString1;
    localcc.fDb = paramString2;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneCancelQRPay", "errType:" + paramInt2 + ",errCode:" + paramInt3 + ",errMsg" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 421;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.model.a
 * JD-Core Version:    0.6.2
 */