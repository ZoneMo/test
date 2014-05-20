package com.tencent.mm.plugin.backup.b;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.protocal.a.ai;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;

public final class e extends a
{
  private com.tencent.mm.n.a cke;

  public e(String paramString)
  {
    b localb = new b();
    localb.a(new ai());
    localb.b(new com.tencent.mm.protocal.a.aj());
    localb.es("/cgi-bin/micromsg-bin/bakchatrecovergetlist");
    localb.cN(325);
    localb.cO(138);
    localb.cP(1000000138);
    this.cke = localb.wx();
    ((ai)this.cke.wr()).fAi = paramString;
    this.cJa = paramString;
  }

  public final com.tencent.mm.network.aj HH()
  {
    return this.cke;
  }

  public final boolean HM()
  {
    com.tencent.mm.protocal.a.aj localaj = (com.tencent.mm.protocal.a.aj)this.cke.ws();
    aa.d("MicroMsg.NetSceneBakChatRecoverGetList", "resp.rImpl.getCount() = " + localaj.fAC);
    return localaj.fAC > 0;
  }

  public final LinkedList HN()
  {
    return ((com.tencent.mm.protocal.a.aj)this.cke.ws()).fAD;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, com.tencent.mm.network.aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneBakChatRecoverGetList", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    ((com.tencent.mm.n.a)paramaj).ws();
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 325;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.b.e
 * JD-Core Version:    0.6.2
 */