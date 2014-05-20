package com.tencent.mm.plugin.shootstub.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.gh;
import com.tencent.mm.protocal.a.gi;

public final class d extends x
  implements ab
{
  private m cjh;
  public a cke;
  private String etC;
  private int etD;
  private String etE;

  public d(String paramString1, int paramInt, String paramString2)
  {
    this.etC = paramString1;
    this.etD = paramInt;
    this.etE = paramString2;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    b localb = new b();
    localb.a(new gh());
    localb.b(new gi());
    localb.es("/cgi-bin/micromsg-bin/gamecheck");
    localb.cN(445);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    gh localgh = (gh)this.cke.wr();
    localgh.fyR = this.etC;
    localgh.fIK = this.etD;
    localgh.fIL = this.etE;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    gh localgh = (gh)((a)paramaj).wr();
    if ((localgh.fyR == null) || (localgh.fyR.length() <= 0) || (localgh.fIK < 0) || (localgh.fIL == null) || (localgh.fIL.length() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.shoot.NetSceneGameCheck", "ERR: Security Check Failed");
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.shoot.NetSceneGameCheck", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " errMsg:" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 445;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.a.d
 * JD-Core Version:    0.6.2
 */