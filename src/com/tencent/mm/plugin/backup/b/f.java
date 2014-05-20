package com.tencent.mm.plugin.backup.b;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.bm;
import com.tencent.mm.protocal.a.ak;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;

public final class f extends a
{
  private int cBP = 0;
  private int cLC = 0;
  private LinkedList cLH = new LinkedList();
  private int cLI = 0;
  private com.tencent.mm.n.a cke;
  private int index = 0;

  public f(int paramInt1, String paramString, int paramInt2, int paramInt3)
  {
    b localb = new b();
    localb.a(new ak());
    localb.b(new com.tencent.mm.protocal.a.al());
    localb.es("/cgi-bin/micromsg-bin/bakchatrecoverhead");
    localb.cN(326);
    localb.cO(139);
    localb.cP(1000000139);
    this.cke = localb.wx();
    this.cLy = paramInt1;
    this.cJa = paramString;
    this.cLC = paramInt3;
    if (bm.ac(com.tencent.mm.sdk.platformtools.al.getContext()));
    for (int i = 131072; ; i = 16384)
    {
      ak localak = (ak)this.cke.wr();
      localak.fAi = paramString;
      localak.fAj = paramInt1;
      localak.fAF = i;
      localak.fAP = paramInt2;
      localak.dGR = paramInt3;
      aa.d("MicroMsg.NetSceneBakChatRecoverHead", "rr.req.rImpl  " + localak.toString());
      return;
    }
  }

  public final aj HH()
  {
    return this.cke;
  }

  public final LinkedList HO()
  {
    return this.cLH;
  }

  public final int HP()
  {
    return this.cBP;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneBakChatRecoverHead", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    com.tencent.mm.protocal.a.al localal = (com.tencent.mm.protocal.a.al)((com.tencent.mm.n.a)paramaj).ws();
    this.index = localal.fAP;
    this.cBP = localal.fAK;
    this.cLI = localal.fAQ;
    this.cLH = localal.fAD;
    aa.d("MicroMsg.NetSceneBakChatRecoverHead", "resp  index: " + this.index + " endFlag: " + this.cBP + " totalCount: " + this.cLI);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getDataType()
  {
    return this.cLC;
  }

  public final int getIndex()
  {
    return this.index;
  }

  public final int getType()
  {
    return 326;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.b.f
 * JD-Core Version:    0.6.2
 */