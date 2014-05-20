package com.tencent.mm.plugin.wallet.bind.model;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.cl;
import com.tencent.mm.protocal.a.cm;
import com.tencent.mm.sdk.platformtools.aa;

public final class c extends x
  implements ab
{
  private m cjh;
  private a cke;

  public c(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    b localb = new b();
    localb.a(new cl());
    localb.b(new cm());
    localb.es("/cgi-bin/micromsg-bin/checkpayjsapi");
    localb.cN(580);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    cl localcl = (cl)this.cke.wr();
    localcl.fyE = paramString1;
    localcl.fBs = paramString2;
    localcl.fDs = paramString3;
    localcl.fDt = paramString4;
    localcl.fDv = paramString5;
    localcl.fDu = paramString6;
    localcl.fDw = paramString7;
    localcl.fDx = 1;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneCheckPayJsapi", "errType:" + paramInt2 + ",errCode:" + paramInt3 + ",errMsg" + paramString);
    cm localcm = (cm)((a)paramaj).ws();
    if ((paramInt2 == 0) && (paramInt3 == 0))
      aa.d("MicroMsg.NetSceneCheckPayJsapi", "rr " + localcm.fDy);
    String str = localcm.fDz;
    this.cjh.a(paramInt2, paramInt3, str, this);
  }

  public final int getType()
  {
    return 580;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.model.c
 * JD-Core Version:    0.6.2
 */