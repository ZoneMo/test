package com.tencent.mm.y;

import com.tencent.mm.model.be;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.bo;
import com.tencent.mm.protocal.a.bp;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;

public final class a extends x
  implements ab
{
  private m cjh;
  private final com.tencent.mm.n.a cke;

  public a(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new bo());
    localb.b(new bp());
    localb.es("/cgi-bin/micromsg-bin/bindlinkedincontact");
    localb.cN(549);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    bo localbo = (bo)this.cke.wr();
    localbo.fBl = 1;
    localbo.fBo = paramInt;
    localbo.fBp = paramString1;
    localbo.fBq = paramString2;
    localbo.fBr = paramString3;
    localbo.fBs = paramString4;
    localbo.fBt = paramString5;
    localbo.fBu = paramString6;
    localbo.fBv = paramString7;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneBindLinkedinContact", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3);
    bo localbo = (bo)this.cke.wr();
    this.cke.ws();
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      be.uz().sr().set(286722, localbo.fBq);
      be.uz().sr().set(286721, localbo.fBp);
      be.uz().sr().set(286723, localbo.fBr);
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 549;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.y.a
 * JD-Core Version:    0.6.2
 */