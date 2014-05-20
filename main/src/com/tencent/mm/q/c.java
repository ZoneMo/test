package com.tencent.mm.q;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.ki;
import com.tencent.mm.protocal.a.kj;

public final class c extends x
  implements ab
{
  private m cjh;
  private final com.tencent.mm.n.a cke;

  public c(String paramString)
  {
    b localb = new b();
    localb.a(new ki());
    localb.b(new kj());
    localb.es("/cgi-bin/micromsg-bin/getquestion");
    localb.cN(243);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    ((ki)this.cke.wr()).fMe = paramString;
  }

  public final int a(r paramr, m paramm)
  {
    a.eR(null);
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      a.yp();
      a.eR(((kj)this.cke.ws()).dGS);
    }
    while (true)
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
      if (paramInt3 == -150)
        a.yn();
      else if (paramInt3 == -151)
        a.yl();
    }
  }

  public final int getType()
  {
    return 243;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.q.c
 * JD-Core Version:    0.6.2
 */