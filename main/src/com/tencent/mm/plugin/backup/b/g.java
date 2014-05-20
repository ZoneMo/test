package com.tencent.mm.plugin.backup.b;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.network.aj;
import com.tencent.mm.plugin.backup.model.r;
import com.tencent.mm.protocal.a.am;
import com.tencent.mm.protocal.a.an;
import com.tencent.mm.sdk.platformtools.aa;

public final class g extends a
{
  private com.tencent.mm.n.a cke;

  public g(String paramString, int paramInt)
  {
    int i = r.GR();
    aa.d("MicroMsg.NetSceneBakChatUploadEnd", "NetSceneBakChatUploadEnd" + paramString + " bakChatSvrId " + paramInt + " netType:" + i);
    b localb = new b();
    localb.a(new am());
    localb.b(new an());
    localb.es("/cgi-bin/micromsg-bin/bakchatuploadend");
    localb.cN(322);
    localb.cO(135);
    localb.cP(1000000135);
    this.cke = localb.wx();
    am localam = (am)this.cke.wr();
    localam.fAi = paramString;
    localam.fAj = paramInt;
    localam.fAR = i;
    this.cJa = paramString;
    this.cLy = paramInt;
  }

  public final aj HH()
  {
    return this.cke;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneBakChatUploadEnd", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 322;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.b.g
 * JD-Core Version:    0.6.2
 */