package com.tencent.mm.plugin.d.b;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.yo;
import com.tencent.mm.protocal.a.yp;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.z;
import java.util.LinkedList;

public final class g extends x
  implements ab
{
  private m cjh;
  private final com.tencent.mm.n.a cke;

  public g(LinkedList paramLinkedList)
  {
    if (paramLinkedList == null)
      throw new NullPointerException("arg list must not be null");
    b localb = new b();
    localb.a(new yo());
    localb.b(new yp());
    localb.es("/cgi-bin/micromsg-bin/useractionreport");
    localb.cN(311);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    yo localyo = (yo)this.cke.wr();
    localyo.fDT = com.tencent.mm.protocal.a.fxl;
    localyo.fDS = com.tencent.mm.protocal.a.fxm;
    localyo.fDV = com.tencent.mm.protocal.a.fxp;
    localyo.fDW = z.azj();
    localyo.fDU = com.tencent.mm.protocal.a.fxo;
    localyo.fYS = paramLinkedList.size();
    localyo.fAD = paramLinkedList;
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
    return 311;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.b.g
 * JD-Core Version:    0.6.2
 */