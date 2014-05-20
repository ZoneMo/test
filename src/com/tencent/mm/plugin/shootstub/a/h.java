package com.tencent.mm.plugin.shootstub.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.gq;
import com.tencent.mm.protocal.a.gr;

public final class h extends x
  implements ab
{
  private m cjh;
  public a cke;
  private String etC;

  public h(String paramString)
  {
    this.etC = paramString;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    b localb = new b();
    localb.a(new gq());
    localb.b(new gr());
    localb.es("/cgi-bin/micromsg-bin/gameinit");
    localb.cN(440);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    ((gq)this.cke.wr()).fyR = this.etC;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    gq localgq = (gq)((a)paramaj).wr();
    if ((localgq.fyR == null) || (localgq.fyR.length() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.shoot.NetSceneGameInit", "ERR: Security Check Failed, AppID == null");
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.shoot.NetSceneGameInit", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " errMsg:" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 440;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.a.h
 * JD-Core Version:    0.6.2
 */