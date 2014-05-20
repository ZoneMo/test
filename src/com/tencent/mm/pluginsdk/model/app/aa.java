package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.q;
import com.tencent.mm.protocal.a.rv;

public final class aa extends x
  implements ab
{
  private m cjh;
  private a cke;
  private int fht;
  private z fhu;

  public aa(int paramInt, z paramz)
  {
    this.fht = paramInt;
    b localb = new b();
    localb.a(new q());
    localb.b(new com.tencent.mm.protocal.a.r());
    localb.es("/cgi-bin/micromsg-bin/appcenter");
    localb.cN(452);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    q localq = (q)this.cke.wr();
    byte[] arrayOfByte = paramz.Ps();
    if (arrayOfByte != null)
      localq.fzK = new rv().bM(arrayOfByte);
    localq.dGR = paramInt;
    this.fhu = paramz;
  }

  public final int a(com.tencent.mm.network.r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneAppCenter", "errType = " + paramInt2 + ", errCode = " + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAppCenter", "errType = " + paramInt2 + ", errCode = " + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.fhu.K(an.a(((com.tencent.mm.protocal.a.r)this.cke.ws()).fzL));
    this.fhu.a(paramInt1, paramInt2, paramInt3, paramString, this.cke, paramArrayOfByte);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int apV()
  {
    return this.fht;
  }

  public final z apW()
  {
    return this.fhu;
  }

  public final int getType()
  {
    return 452;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.aa
 * JD-Core Version:    0.6.2
 */