package com.tencent.mm.modelsimple;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.hi;
import com.tencent.mm.protocal.a.hj;
import com.tencent.mm.sdk.platformtools.aa;

public final class w extends x
  implements ab
{
  private m cjh;
  private a cke;

  public w(String paramString)
  {
    b localb = new b();
    localb.a(new hi());
    localb.b(new hj());
    localb.es("/cgi-bin/micromsg-bin/generalset");
    localb.cN(177);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    hi localhi = (hi)this.cke.wr();
    localhi.fJH = 1;
    localhi.fJI = paramString;
  }

  public final int a(r paramr, m paramm)
  {
    aa.d("MicroMsg.NetSceneGeneralSet", "doScene");
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneGeneralSet", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 177;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.w
 * JD-Core Version:    0.6.2
 */