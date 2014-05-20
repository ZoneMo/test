package com.tencent.mm.z;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.sdk.platformtools.aa;

final class d extends x
  implements ab
{
  private m cjh;
  private aj cmF;
  private long cuG = -1L;

  public d(long paramLong)
  {
    this.cuG = paramLong;
  }

  public final int a(r paramr, m paramm)
  {
    this.cmF = new e();
    byte[] arrayOfByte = com.tencent.mm.platformtools.au.ib(com.tencent.mm.platformtools.au.hW((String)be.uz().sr().get(8195)));
    if (com.tencent.mm.platformtools.au.A(arrayOfByte))
    {
      aa.b("MicroMsg.NetSceneNotifyData", "dkpush %s", new Object[] { "get keyBuf failed" });
      return -1;
    }
    ((com.tencent.mm.protocal.au)this.cmF.wJ()).bH(this.cuG);
    ((com.tencent.mm.protocal.au)this.cmF.wJ()).ay(arrayOfByte);
    this.cjh = paramm;
    aa.e("MicroMsg.NetSceneNotifyData", "dkpush %s", new Object[] { "doscene now" });
    return a(paramr, this.cmF, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 268369922;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.d
 * JD-Core Version:    0.6.2
 */