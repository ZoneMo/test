package com.tencent.mm.modelsimple;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.th;
import com.tencent.mm.protocal.a.ti;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class ao extends x
  implements ab
{
  private m cjh;
  private final a cke;

  public ao(String paramString)
  {
    b localb = new b();
    localb.a(new th());
    localb.b(new ti());
    localb.es("/cgi-bin/micromsg-bin/newsetemailpwd");
    localb.cN(382);
    localb.cO(181);
    localb.cP(1000000181);
    this.cke = localb.wx();
    ((th)this.cke.wr()).fBL = cj.hZ(paramString);
    aa.d("MicroMsg.NetSceneSetEmailPwd", "md5 " + paramString);
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneSetEmailPwd", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 382;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.ao
 * JD-Core Version:    0.6.2
 */