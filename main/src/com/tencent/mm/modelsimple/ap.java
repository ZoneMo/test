package com.tencent.mm.modelsimple;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.tl;
import com.tencent.mm.protocal.a.tm;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class ap extends x
  implements ab
{
  private m cjh;
  private final a cke;

  public ap(String paramString1, String paramString2)
  {
    b localb = new b();
    localb.a(new tl());
    localb.b(new tm());
    localb.es("/cgi-bin/micromsg-bin/newsetpasswd");
    localb.cN(383);
    localb.cO(180);
    localb.cP(1000000180);
    this.cke = localb.wx();
    tl localtl = (tl)this.cke.wr();
    localtl.fQS = cj.hZ(paramString1);
    localtl.fFm = paramString2;
    aa.d("MicroMsg.NetSceneSetPwd", "md5 " + paramString1 + " ticket " + paramString2);
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneSetPwd", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 383;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.ap
 * JD-Core Version:    0.6.2
 */