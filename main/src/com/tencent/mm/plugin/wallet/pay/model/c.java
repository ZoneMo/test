package com.tencent.mm.plugin.wallet.pay.model;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.ps;
import com.tencent.mm.protocal.a.pt;
import com.tencent.mm.sdk.platformtools.aa;

public final class c extends x
  implements ab
{
  private m cjh;
  private com.tencent.mm.n.a cke;

  public c(com.tencent.mm.sdk.d.a parama)
  {
    b localb = new b();
    localb.a(new ps());
    localb.b(new pt());
    localb.es("/cgi-bin/micromsg-bin/payauthapp");
    localb.cN(397);
    localb.cO(188);
    localb.cP(1000000188);
    this.cke = localb.wx();
    ps localps = (ps)this.cke.wr();
    localps.fyE = parama.appId;
    localps.fSf = parama.fbi;
    localps.fJE = parama.gcc;
    localps.fDs = parama.gcd;
    localps.fNf = parama.gce;
    localps.fDt = parama.gcf;
    localps.fDu = parama.gcg;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetScenePayAuthApp", "errType:" + paramInt2 + ",errCode:" + paramInt3 + ",errMsg" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int aoq()
  {
    pt localpt = (pt)this.cke.ws();
    if (localpt == null)
      return -1;
    return localpt.fDy;
  }

  public final String aor()
  {
    pt localpt = (pt)this.cke.ws();
    if (localpt == null)
      return null;
    return localpt.fDz;
  }

  public final String aos()
  {
    pt localpt = (pt)this.cke.ws();
    if (localpt == null)
      return null;
    return localpt.fJE;
  }

  public final String aot()
  {
    pt localpt = (pt)this.cke.ws();
    if (localpt == null)
      return null;
    return localpt.fJF;
  }

  public final int getType()
  {
    return 397;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.model.c
 * JD-Core Version:    0.6.2
 */