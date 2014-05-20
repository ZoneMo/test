package com.tencent.mm.modelsimple;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.qs;
import com.tencent.mm.protocal.a.qt;

public final class ac extends x
  implements ab
{
  private m cjh;
  private a cke;
  private int cxu = 1;

  public ac(int paramInt)
  {
    b localb = new b();
    localb.a(new qs());
    localb.b(new qt());
    localb.es("/cgi-bin/micromsg-bin/queryhaspasswd");
    localb.cN(255);
    localb.cO(132);
    localb.cP(1000000132);
    this.cke = localb.wx();
    ((qs)this.cke.wr()).fyJ = paramInt;
  }

  public final int Cv()
  {
    return this.cxu;
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

  public final void dS(int paramInt)
  {
    this.cxu = paramInt;
  }

  public final int getType()
  {
    return 255;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.ac
 * JD-Core Version:    0.6.2
 */