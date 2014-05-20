package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.gt;
import com.tencent.mm.protocal.a.gu;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.z;

public final class at extends x
  implements ab
{
  private m cjh;
  private com.tencent.mm.n.a cke;
  private int dnJ;
  private String dnK;

  public at(int paramInt, String paramString)
  {
    b localb = new b();
    localb.a(new gt());
    localb.b(new gu());
    localb.es("/cgi-bin/micromsg-bin/gamereportkv");
    localb.cN(427);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    gt localgt = (gt)this.cke.wr();
    localgt.fDS = com.tencent.mm.protocal.a.fxm;
    localgt.fDT = com.tencent.mm.protocal.a.fxl;
    localgt.fDU = com.tencent.mm.protocal.a.fxo;
    localgt.fDV = com.tencent.mm.protocal.a.fxp;
    localgt.fDW = z.azj();
    localgt.fJy = paramInt;
    localgt.fJz = paramString;
    this.dnJ = paramInt;
    this.dnK = paramString;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MircoMsg.NetsceneGameKVReport", "errType = " + paramInt2 + ", errCode = " + paramInt3 + ", logId = " + this.dnJ + ", logExt = " + this.dnK);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 427;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.at
 * JD-Core Version:    0.6.2
 */