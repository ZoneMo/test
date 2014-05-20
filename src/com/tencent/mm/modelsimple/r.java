package com.tencent.mm.modelsimple;

import com.tencent.mm.m.c;
import com.tencent.mm.model.be;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.protocal.a.av;
import com.tencent.mm.protocal.a.fp;
import com.tencent.mm.protocal.a.fq;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

public final class r extends x
  implements ab
{
  private int bNK;
  private m cjh;
  private a cke;

  public r(int paramInt, String paramString)
  {
    this.bNK = paramInt;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new fp());
    localb.b(new fq());
    localb.es("/cgi-bin/micromsg-bin/facebookauth");
    localb.cN(183);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    fp localfp = (fp)this.cke.wr();
    if (cj.hX(paramString))
      paramString = "";
    localfp.fGt = paramString;
    localfp.fGs = paramInt;
  }

  public final int a(com.tencent.mm.network.r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneFaceBookAuth", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3);
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      fq localfq = (fq)this.cke.ws();
      int i = localfq.ayf().fAY;
      if (i != 0)
      {
        aa.e("MicroMsg.NetSceneFaceBookAuth", "baseresponse.ret = " + i);
        this.cjh.a(4, i, paramString, this);
        return;
      }
      aa.d("MicroMsg.NetSceneFaceBookAuth", "fbuserid = " + localfq.fGv + ", fbusername = " + localfq.fGw);
      if ((this.bNK == 0) || (this.bNK == 1))
      {
        be.uz().sr().set(65825, localfq.fGv);
        c.dR(localfq.fGv);
        be.uz().sr().set(65826, localfq.fGw);
      }
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 183;
  }

  public final int zO()
  {
    return this.bNK;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.r
 * JD-Core Version:    0.6.2
 */