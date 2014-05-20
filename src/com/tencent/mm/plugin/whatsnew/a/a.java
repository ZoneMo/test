package com.tencent.mm.plugin.whatsnew.a;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.aaj;
import com.tencent.mm.protocal.a.aak;
import com.tencent.mm.sdk.platformtools.aa;

public final class a extends x
  implements ab
{
  private m cjh;
  private final com.tencent.mm.n.a cke;
  public int ffg;
  public int ffh;

  public a()
  {
    b localb = new b();
    localb.a(new aaj());
    localb.b(new aak());
    localb.es("/cgi-bin/micromsg-bin/whatsnews");
    localb.cN(581);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneWhatsNews", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3);
    this.cke.wr();
    aak localaak = (aak)this.cke.ws();
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      this.ffh = localaak.gao;
      this.ffg = localaak.gan;
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 581;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.whatsnew.a.a
 * JD-Core Version:    0.6.2
 */