package com.tencent.mm.plugin.wallet.pay.model;

import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.hf;
import com.tencent.mm.protocal.a.hg;
import com.tencent.mm.sdk.platformtools.aa;

public final class b extends x
  implements ab
{
  private m cjh;
  private a cke;
  private String fbb;
  private String fbc;

  public b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, int paramInt)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new hf());
    localb.b(new hg());
    localb.es("/cgi-bin/micromsg-bin/genprepay");
    localb.cN(398);
    localb.cO(189);
    localb.cP(1000000189);
    this.cke = localb.wx();
    hf localhf = (hf)this.cke.wr();
    localhf.fyE = paramString1;
    localhf.fDt = paramString4;
    localhf.fDs = paramString3;
    localhf.fDu = paramString5;
    localhf.fDv = paramString2;
    localhf.fBs = paramString6;
    localhf.fDw = paramString7;
    localhf.fJC = paramString8;
    localhf.fJD = paramInt;
    aa.d("MicroMsg.NetSceneGenPrepay", String.format("appid:%s,packageExt:%s,nonceStr:%s,paySignature:%s,signtype:%s,timeStamp:%s,url:%s,bizUsername:%s,", new Object[] { paramString1, paramString4, paramString3, paramString5, paramString2, paramString6, paramString7, paramString8 }));
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneGenPrepay", "errType:" + paramInt2 + ",errCode:" + paramInt3 + ",errMsg" + paramString);
    hg localhg = (hg)((a)paramaj).ws();
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      aa.d("MicroMsg.NetSceneGenPrepay", "rr " + localhg.fJE);
      this.fbb = localhg.fJE;
      this.fbc = localhg.fJF;
    }
    String str = localhg.fDz;
    this.cjh.a(paramInt2, paramInt3, str, this);
  }

  public final String aoo()
  {
    return this.fbb;
  }

  public final String aop()
  {
    return this.fbc;
  }

  public final int getType()
  {
    return 398;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.model.b
 * JD-Core Version:    0.6.2
 */