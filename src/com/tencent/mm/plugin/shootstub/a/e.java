package com.tencent.mm.plugin.shootstub.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.gk;
import com.tencent.mm.protocal.a.gl;
import com.tencent.mm.sdk.platformtools.aa;

public final class e extends x
  implements ab
{
  private m cjh;
  public a cke;
  private String etC;

  public e(String paramString)
  {
    this.etC = paramString;
  }

  public final int a(r paramr, m paramm)
  {
    aa.d("MicroMsg.shoot.NetSceneGameConsume", "doScene appID:" + this.etC);
    this.cjh = paramm;
    b localb = new b();
    localb.a(new gk());
    localb.b(new gl());
    localb.es("/cgi-bin/micromsg-bin/gameconsume");
    localb.cN(516);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    ((gk)this.cke.wr()).fyR = this.etC;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.shoot.NetSceneGameConsume", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " errMsg:" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 516;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.a.e
 * JD-Core Version:    0.6.2
 */