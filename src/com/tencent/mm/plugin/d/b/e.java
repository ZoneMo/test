package com.tencent.mm.plugin.d.b;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.km;
import com.tencent.mm.protocal.a.kn;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.z;
import java.util.LinkedList;

public final class e extends x
  implements ab
{
  private m cjh;
  private final com.tencent.mm.n.a cke;

  public e()
  {
    b localb = new b();
    localb.a(new km());
    localb.b(new kn());
    localb.es("/cgi-bin/micromsg-bin/reportstrategy");
    localb.cN(308);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    km localkm = (km)this.cke.wr();
    localkm.fDT = com.tencent.mm.protocal.a.fxl;
    localkm.fDS = com.tencent.mm.protocal.a.fxm;
    localkm.fDV = com.tencent.mm.protocal.a.fxp;
    localkm.fDW = z.azj();
    localkm.fDU = com.tencent.mm.protocal.a.fxo;
  }

  public final LinkedList YZ()
  {
    return ((kn)this.cke.ws()).fAD;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0))
      aa.d("MicroMsg.NetSceneGetReportRule", "get report strategy ok");
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 308;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.b.e
 * JD-Core Version:    0.6.2
 */