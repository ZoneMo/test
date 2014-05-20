package com.tencent.mm.plugin.d.b;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.cu;
import com.tencent.mm.protocal.a.cv;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.z;
import java.util.LinkedList;

public final class d extends x
  implements ab
{
  private m cjh;
  private final com.tencent.mm.n.a cke;

  public d(LinkedList paramLinkedList)
  {
    if (paramLinkedList == null)
      throw new NullPointerException("list must be not null");
    b localb = new b();
    localb.a(new cu());
    localb.b(new cv());
    localb.es("/cgi-bin/micromsg-bin/clientperfreport");
    localb.cN(309);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    cu localcu = (cu)this.cke.wr();
    localcu.fDT = com.tencent.mm.protocal.a.fxl;
    localcu.fDS = com.tencent.mm.protocal.a.fxm;
    localcu.fDV = com.tencent.mm.protocal.a.fxp;
    localcu.fDW = z.azj();
    localcu.fDU = com.tencent.mm.protocal.a.fxo;
    localcu.fAD = paramLinkedList;
    localcu.fDX = paramLinkedList.size();
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0))
      aa.d("MicroMsg.NetSceneClientPerfReport", "get report strategy ok");
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 309;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.b.d
 * JD-Core Version:    0.6.2
 */