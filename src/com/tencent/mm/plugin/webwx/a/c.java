package com.tencent.mm.plugin.webwx.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.nc;
import com.tencent.mm.protocal.a.nd;
import com.tencent.mm.sdk.platformtools.aa;

public final class c extends x
  implements ab
{
  private m cjh;
  private final a cke;

  public c(int paramInt)
  {
    b localb = new b();
    localb.a(new nc());
    localb.b(new nd());
    localb.es("/cgi-bin/micromsg-bin/logoutwebwx");
    localb.cN(281);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    ((nc)this.cke.wr()).fBj = paramInt;
  }

  public final int a(r paramr, m paramm)
  {
    aa.d("MicroMsg.NetSceneWebWXLogout", "doScene");
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 != 0) || (paramInt3 != 0))
      aa.d("MicroMsg.NetSceneWebWXLogout", "logout Error. ");
    if (this.cjh != null)
      this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 281;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webwx.a.c
 * JD-Core Version:    0.6.2
 */