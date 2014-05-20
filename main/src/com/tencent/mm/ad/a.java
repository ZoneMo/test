package com.tencent.mm.ad;

import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.kg;
import com.tencent.mm.protocal.a.kh;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

public final class a extends x
  implements ab
{
  private m cjh = null;
  private final com.tencent.mm.n.a cke;

  public a()
  {
    this(v.th(), cj.c((Integer)be.uz().sr().get(66561)));
  }

  public a(String paramString, int paramInt)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new kg());
    localb.b(new kh());
    localb.es("/cgi-bin/micromsg-bin/getqrcode");
    localb.cN(168);
    localb.cO(67);
    localb.cP(1000000067);
    this.cke = localb.wx();
    kg localkg = (kg)this.cke.wr();
    localkg.fEI = an.hQ(paramString);
    localkg.fIJ = paramInt;
    aa.d("MicroMsg.NetSceneGetQRCode", "req username:" + paramString + " style" + paramInt);
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneGetQRCode", "onGYNetEnd errType:" + paramInt2 + " errCode" + paramInt3);
    String str;
    byte[] arrayOfByte;
    int i;
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      kg localkg = (kg)this.cke.wr();
      kh localkh = (kh)this.cke.ws();
      str = an.a(localkg.fEI);
      arrayOfByte = an.a(localkh.fMd, new byte[0]);
      i = localkh.fIJ;
      aa.d("MicroMsg.NetSceneGetQRCode", "onGYNetEnd QRCODE:" + arrayOfByte.length + " style:" + i);
      if (!str.endsWith("@chatroom"))
        break label158;
      b.d(str, arrayOfByte);
    }
    while (true)
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
      label158: be.uz().sr().set(66561, Integer.valueOf(i));
      b.d(str, arrayOfByte);
    }
  }

  public final int getType()
  {
    return 168;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ad.a
 * JD-Core Version:    0.6.2
 */