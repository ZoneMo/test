package com.tencent.mm.plugin.wallet.iap.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.zb;
import com.tencent.mm.protocal.a.zc;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class b extends x
  implements ab
{
  private String cZs = null;
  private m cjh;
  private final a cke;

  public b(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new zb());
    localb.b(new zc());
    localb.es("/cgi-bin/micromsg-bin/verifypurchase");
    localb.cN(414);
    localb.cO(215);
    localb.cP(1000000215);
    this.cke = localb.wx();
    zb localzb = (zb)this.cke.wr();
    this.cZs = paramString1;
    localzb.fFB = paramString1;
    localzb.fZp = 1;
    localzb.fSL = paramInt2;
    localzb.fSi = paramInt1;
    if (!cj.hX(paramString6))
    {
      localzb.fSJ = paramString6;
      localzb.fSK = paramString5;
    }
    localzb.fSM = paramString2;
    localzb.fZr = paramString4;
    byte[] arrayOfByte;
    if (paramString3 != null)
      arrayOfByte = paramString3.getBytes();
    for (localzb.fZo = new rv().bM(arrayOfByte); ; localzb.fZo = new rv())
    {
      localzb.fZq = ((int)cj.FC());
      aa.d("MicroMsg.NetSceneVerifyPurchase", "productId:" + this.cZs + ",verifyType:1,palyType:" + paramInt1 + ",payload:" + paramString2 + ",purchaseData:" + paramString3 + ",dataSignature:" + paramString4);
      return;
    }
  }

  public final String Lg()
  {
    return this.cZs;
  }

  public final String Li()
  {
    zc localzc = (zc)this.cke.ws();
    if (localzc != null)
    {
      aa.d("MicroMsg.NetSceneVerifyPurchase", " Get Series ID is " + localzc.fGj);
      aa.d("MicroMsg.NetSceneVerifyPurchase", " Get Biz Type is " + localzc.fZs);
      return localzc.fGj;
    }
    return "";
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.e("MicroMsg.NetSceneVerifyPurchase", "ErrType:" + paramInt2 + "   errCode:" + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 414;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.iap.a.b
 * JD-Core Version:    0.6.2
 */