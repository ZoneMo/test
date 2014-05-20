package com.tencent.mm.modelsimple;

import com.tencent.mm.c.a.hm;
import com.tencent.mm.model.be;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.ka;
import com.tencent.mm.protocal.a.kb;
import com.tencent.mm.protocal.a.oq;
import com.tencent.mm.protocal.a.yu;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

public final class aa extends x
  implements ab
{
  private m cjh;
  private com.tencent.mm.n.a cke;
  private String cxs;

  public aa(String paramString)
  {
    this.cxs = paramString;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new ka());
    localb.b(new kb());
    localb.es("/cgi-bin/micromsg-bin/getprofile");
    localb.cN(302);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    ((ka)this.cke.wr()).eBo = paramString;
  }

  public final int a(r paramr, m paramm)
  {
    if (cj.hX(this.cxs))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetProfile", "null or empty username");
      return -1;
    }
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetProfile", "get profile ret: errType=" + paramInt2 + " errCode=" + paramInt3 + " errMsg=" + paramString);
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      kb localkb = (kb)this.cke.ws();
      hm localhm = new hm();
      localhm.bRg.bRh = localkb;
      com.tencent.mm.sdk.b.a.ayH().f(localhm);
      be.uz().sr().set(64, Integer.valueOf(localkb.fLW.fBQ));
      be.uz().sr().set(144385, Integer.valueOf(localkb.fLW.fZd));
      be.uz().sr().set(40, Integer.valueOf(localkb.fLV.fPP));
      be.uz().sr().set(208903, localkb.fLW.fBm);
      be.uz().sr().set(274433, localkb.fLW.fPg);
      be.uz().sr().set(274434, localkb.fLW.fPf);
      be.uz().sr().set(274436, localkb.fLW.fZe);
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 302;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.aa
 * JD-Core Version:    0.6.2
 */