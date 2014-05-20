package com.tencent.mm.plugin.backup.b;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.network.aj;
import com.tencent.mm.protocal.a.ao;
import com.tencent.mm.protocal.a.ap;
import com.tencent.mm.sdk.platformtools.aa;

public final class h extends a
{
  private String cLJ;
  private com.tencent.mm.n.a cke;

  public h(String paramString1, String paramString2, boolean paramBoolean, int paramInt)
  {
    b localb = new b();
    localb.a(new ao());
    localb.b(new ap());
    localb.es("/cgi-bin/micromsg-bin/bakchatuploadhead");
    localb.cN(321);
    localb.cO(134);
    localb.cP(1000000134);
    this.cke = localb.wx();
    ao localao = (ao)this.cke.wr();
    localao.fAi = paramString1;
    localao.fAk = paramString2;
    if (paramBoolean)
    {
      localao.fAs = paramInt;
      localao.fAt = 1;
    }
    this.cJa = paramString1;
    this.cLJ = paramString2;
    aa.d("MicroMsg.NetSceneBakChatUploadHead", "upload head");
  }

  public final aj HH()
  {
    return this.cke;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneBakChatUploadHead", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    ap localap = (ap)((com.tencent.mm.n.a)paramaj).ws();
    this.cLy = localap.fAj;
    aa.d("MicroMsg.NetSceneBakChatUploadHead", "bakSvrId " + this.cLy + "pcBakChatClientId " + localap.fAi);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 321;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.b.h
 * JD-Core Version:    0.6.2
 */