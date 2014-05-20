package com.tencent.mm.modelsimple;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.sr;
import com.tencent.mm.protocal.a.ss;
import com.tencent.mm.sdk.platformtools.aa;

public final class al extends x
  implements ab
{
  private m cjh;
  private final a cke;

  public al(String paramString1, String paramString2)
  {
    b localb = new b();
    localb.a(new sr());
    localb.b(new ss());
    localb.es("/cgi-bin/micromsg-bin/sendfeedback");
    localb.cN(153);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    sr localsr = (sr)this.cke.wr();
    localsr.fUu = paramString1;
    localsr.dGS = paramString2;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSendSceneFeedBack", "onGYNetEnd type:" + paramInt2 + " code:" + paramInt3);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 153;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.al
 * JD-Core Version:    0.6.2
 */