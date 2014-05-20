package com.tencent.mm.plugin.safedevice.a;

import com.tencent.mm.model.be;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.dw;
import com.tencent.mm.protocal.a.dx;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

public final class a extends x
  implements ab
{
  private m cjh;
  private com.tencent.mm.n.a cke;
  private String dZU;

  public a(String paramString)
  {
    this.dZU = paramString;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new dw());
    localb.b(new dx());
    localb.es("/cgi-bin/micromsg-bin/delsafedevice");
    localb.cN(362);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    ((dw)this.cke.wr()).fEM = paramString;
  }

  public final int a(r paramr, m paramm)
  {
    if (cj.hX(this.dZU))
    {
      aa.e("MicroMsg.NetSceneDelSafeDevice", "null device id");
      return -1;
    }
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneDelSafeDevice", "NetSceneDelSafeDevice, errType= " + paramInt2 + " errCode = " + paramInt3);
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      dx localdx = (dx)this.cke.ws();
      be.uz().sr().set(64, Integer.valueOf(localdx.fBQ));
      aa.d("MicroMsg.NetSceneDelSafeDevice", "NetSceneDelSafeDevice, get safedevice state = " + localdx.fBQ);
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 362;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.a.a
 * JD-Core Version:    0.6.2
 */