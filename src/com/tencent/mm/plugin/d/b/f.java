package com.tencent.mm.plugin.d.b;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.mg;
import com.tencent.mm.protocal.a.mh;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.z;
import java.util.LinkedList;

public final class f extends x
  implements ab
{
  private m cjh;
  private final com.tencent.mm.n.a cke;

  public f(LinkedList paramLinkedList)
  {
    if (paramLinkedList == null)
      throw new NullPointerException("arg list must not be null");
    b localb = new b();
    localb.a(new mg());
    localb.b(new mh());
    localb.es("/cgi-bin/micromsg-bin/kvreport");
    localb.cN(310);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    mg localmg = (mg)this.cke.wr();
    localmg.fDT = com.tencent.mm.protocal.a.fxl;
    localmg.fDS = com.tencent.mm.protocal.a.fxm;
    localmg.fDV = com.tencent.mm.protocal.a.fxp;
    localmg.fDW = z.azj();
    localmg.fDU = com.tencent.mm.protocal.a.fxo;
    localmg.fNm = paramLinkedList.size();
    localmg.fAD = paramLinkedList;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0))
      aa.d("MicroMsg.NetSceneUserActionReport", "get report strategy ok");
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 310;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.b.f
 * JD-Core Version:    0.6.2
 */