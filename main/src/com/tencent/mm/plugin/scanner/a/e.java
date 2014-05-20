package com.tencent.mm.plugin.scanner.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.sb;
import com.tencent.mm.protocal.a.sc;

public final class e extends x
  implements ab
{
  private m cjh;
  private a cke;

  public e(int paramInt, String paramString)
  {
    b localb = new b();
    localb.a(new sb());
    localb.b(new sc());
    localb.es("/cgi-bin/micromsg-bin/scanbarcode");
    localb.cN(420);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    sb localsb = (sb)this.cke.wr();
    localsb.dGR = paramInt;
    localsb.fUi = paramString;
    localsb.fyJ = 1;
  }

  public final sc ZE()
  {
    if ((this.cke != null) && (this.cke.ws() != null))
      return (sc)this.cke.ws();
    return null;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    sb localsb = (sb)((a)paramaj).wr();
    if ((localsb.dGR < 0) || (localsb.fUi == null) || (localsb.fUi.length() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.scanner.NetSceneScanBarcode", "securityVerificationChecked failed, Type = " + localsb.dGR + ", Barcode = %s" + localsb.fUi);
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.scanner.NetSceneScanBarcode", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " errMsg:" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 420;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.a.e
 * JD-Core Version:    0.6.2
 */