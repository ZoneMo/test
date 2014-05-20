package com.tencent.mm.plugin.webwx.a;

import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.a;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.vy;
import com.tencent.mm.protocal.a.vz;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class b extends x
  implements ab
{
  private final String bMR;
  private m cjh;
  private final a cke;

  public b(String paramString, int paramInt)
  {
    this.bMR = paramString;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new vy());
    localb.b(new vz());
    localb.es("/cgi-bin/micromsg-bin/statusnotify");
    localb.cN(251);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    vy localvy = (vy)this.cke.wr();
    localvy.fzp = v.th();
    localvy.fXr = paramInt;
    localvy.fzq = paramString;
    localvy.fzT = System.currentTimeMillis();
    aa.d("MicroMsg.NetSceneStatusNotify", "toUserName = " + paramString);
  }

  public static void E(String paramString, boolean paramBoolean)
  {
    if ((cj.hX(paramString)) || (w.db(paramString)));
    while (be.uz().sd() == 0)
      return;
    if (paramBoolean);
    for (int i = 5; ; i = 2)
    {
      b localb = new b(paramString, i);
      be.uA().d(localb);
      return;
    }
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 != 0) || (paramInt3 != 0))
      aa.d("MicroMsg.NetSceneStatusNotify", "StatusNotify Error. userName=" + this.bMR);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 251;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webwx.a.b
 * JD-Core Version:    0.6.2
 */