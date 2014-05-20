package com.tencent.mm.plugin.backup.b;

import com.tencent.mm.n.m;
import com.tencent.mm.network.aj;
import com.tencent.mm.protocal.a.ab;
import com.tencent.mm.protocal.a.ac;
import com.tencent.mm.sdk.platformtools.aa;

public final class b extends a
{
  private com.tencent.mm.n.a cke;

  public b(String paramString, int paramInt)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new ab());
    localb.b(new ac());
    localb.es("/cgi-bin/micromsg-bin/bakchatdelete");
    localb.cN(328);
    localb.cO(141);
    localb.cP(1000000141);
    this.cke = localb.wx();
    ab localab = (ab)this.cke.wr();
    localab.fAi = paramString;
    localab.fAj = paramInt;
    this.cJa = paramString;
    this.cLy = paramInt;
  }

  public final aj HH()
  {
    return this.cke;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneBakChatDelete", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 328;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.b.b
 * JD-Core Version:    0.6.2
 */