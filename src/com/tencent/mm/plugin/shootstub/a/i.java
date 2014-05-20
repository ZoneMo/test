package com.tencent.mm.plugin.shootstub.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.gw;
import com.tencent.mm.protocal.a.gx;

public final class i extends x
  implements ab
{
  private m cjh;
  public a cke;
  private String etC;
  private String etQ;
  private int score;
  private int type;

  public i(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    this.etC = paramString1;
    this.score = paramInt1;
    this.type = paramInt2;
    this.etQ = paramString2;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    b localb = new b();
    localb.a(new gw());
    localb.b(new gx());
    localb.es("/cgi-bin/micromsg-bin/gameshare");
    localb.cN(450);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    gw localgw = (gw)this.cke.wr();
    localgw.fyR = this.etC;
    localgw.fJd = this.score;
    localgw.dGR = this.type;
    localgw.fJA = this.etQ;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    gw localgw = (gw)((a)paramaj).wr();
    if ((localgw.fyR == null) || (localgw.fyR.length() <= 0) || (localgw.fJd < 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.shoot.NetSceneGameShare", "ERR: Security Check Failed");
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.shoot.NetSceneGameShare", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " errMsg:" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 450;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.a.i
 * JD-Core Version:    0.6.2
 */