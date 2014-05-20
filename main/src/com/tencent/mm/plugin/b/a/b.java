package com.tencent.mm.plugin.b.a;

import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.z;
import java.util.LinkedList;

public final class b extends x
  implements ab
{
  private m cjh;
  private final aj cmF;

  public b(LinkedList paramLinkedList)
  {
    if (paramLinkedList == null)
      throw new NullPointerException("arg list must not be null");
    this.cmF = new a();
    com.tencent.mm.plugin.d.b.b localb = (com.tencent.mm.plugin.d.b.b)this.cmF.wJ();
    localb.dZq.fDT = com.tencent.mm.protocal.a.fxl;
    localb.dZq.fDS = com.tencent.mm.protocal.a.fxm;
    localb.dZq.fDV = com.tencent.mm.protocal.a.fxp;
    localb.dZq.fDW = z.azj();
    localb.dZq.fDU = com.tencent.mm.protocal.a.fxo;
    localb.dZq.fNm = paramLinkedList.size();
    localb.dZq.fAD = paramLinkedList;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cmF, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneRsaKvReport", "errType = " + paramInt2 + ", errCode = " + paramInt3);
    if ((paramInt2 == 0) && (paramInt3 == 0))
      aa.d("MicroMsg.NetSceneRsaKvReport", "get report strategy ok");
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 443;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.b.a.b
 * JD-Core Version:    0.6.2
 */