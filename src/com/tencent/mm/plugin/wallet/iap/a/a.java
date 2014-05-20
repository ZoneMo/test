package com.tencent.mm.plugin.wallet.iap.a;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.qk;
import com.tencent.mm.protocal.a.ql;
import com.tencent.mm.sdk.platformtools.aa;

public final class a extends x
  implements ab
{
  private String cZs;
  private m cjh;
  private final com.tencent.mm.n.a cke;
  private String dcy;
  private String eZU;

  public a(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, String paramString4)
  {
    b localb = new b();
    localb.a(new qk());
    localb.b(new ql());
    localb.es("/cgi-bin/micromsg-bin/preparepurchase");
    localb.cN(422);
    localb.cO(214);
    localb.cP(1000000214);
    this.cke = localb.wx();
    qk localqk = (qk)this.cke.wr();
    this.cZs = paramString1;
    localqk.fFB = paramString1;
    this.dcy = paramString2;
    localqk.fSJ = paramString2;
    this.eZU = paramString3;
    localqk.fSK = paramString3;
    localqk.fSi = paramInt2;
    localqk.fSL = paramInt1;
    localqk.fEv = paramString4;
    aa.d("MicroMsg.NetScenePreparePurchase", "productId:" + paramString1 + ",price:" + paramString2 + ",currencyType:" + paramString3 + ",payType:" + paramInt2);
  }

  public final String Lg()
  {
    return this.cZs;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.e("MicroMsg.NetScenePreparePurchase", "ErrType:" + paramInt2 + ",errCode:" + paramInt3 + ",errMsg:" + paramString);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final String anA()
  {
    return this.dcy;
  }

  public final String anB()
  {
    ql localql = (ql)this.cke.ws();
    if (localql != null)
    {
      aa.d("MicroMsg.NetScenePreparePurchase", "get bill no is " + localql.fSM);
      return localql.fSM;
    }
    aa.e("MicroMsg.NetScenePreparePurchase", "get bill no field.");
    return "";
  }

  public final String anC()
  {
    ql localql = (ql)this.cke.ws();
    if (localql != null)
    {
      aa.d("MicroMsg.NetScenePreparePurchase", "get TradeToken4TenPay is " + localql.fSN);
      return localql.fSN;
    }
    aa.e("MicroMsg.NetScenePreparePurchase", "get TradeToken4TenPay field.");
    return "";
  }

  public final String anD()
  {
    ql localql = (ql)this.cke.ws();
    if (localql != null)
    {
      aa.d("MicroMsg.NetScenePreparePurchase", "get Partner4TenPay is " + localql.fSO);
      return localql.fSO;
    }
    aa.e("MicroMsg.NetScenePreparePurchase", "get Partner4TenPay field.");
    return "";
  }

  public final String anE()
  {
    ql localql = (ql)this.cke.ws();
    if (localql != null)
    {
      aa.d("MicroMsg.NetScenePreparePurchase", "get Sign4TenPay is " + localql.fSP);
      return localql.fSP;
    }
    aa.e("MicroMsg.NetScenePreparePurchase", "get Sign4TenPay field.");
    return "";
  }

  public final String anz()
  {
    return this.eZU;
  }

  public final int getType()
  {
    return 422;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.iap.a.a
 * JD-Core Version:    0.6.2
 */