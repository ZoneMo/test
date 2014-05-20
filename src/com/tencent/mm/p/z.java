package com.tencent.mm.p;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.cr;
import com.tencent.mm.protocal.a.cs;
import com.tencent.mm.sdk.platformtools.aa;

public final class z extends x
  implements ab
{
  private m cjh;
  private a cke;

  public z(String paramString1, int paramInt, String paramString2)
  {
    b localb = new b();
    localb.a(new cr());
    localb.b(new cs());
    localb.es("/cgi-bin/micromsg-bin/clickcommand");
    localb.cN(359);
    localb.cO(176);
    localb.cP(1000000176);
    this.cke = localb.wx();
    cr localcr = (cr)this.cke.wr();
    localcr.fDI = paramInt;
    localcr.fDJ = paramString2;
    localcr.fDK = paramString1;
    aa.d("MicroMsg.NetSceneBizClickCommand", "click command: " + paramString1 + " , type: " + paramInt + " , info: " + paramString2);
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 359;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.z
 * JD-Core Version:    0.6.2
 */