package com.tencent.mm.plugin.scanner.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.pf;
import com.tencent.mm.protocal.a.pg;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.cj;

public final class d extends x
  implements ab
{
  private m cjh;
  private a cke;
  private byte[] eaX;
  private int eaY = 1;
  private String eaZ = "en";
  private String eba = "zh_CN";
  private int ebb;

  public d(byte[] paramArrayOfByte, String paramString1, String paramString2, int paramInt)
  {
    this.eaX = paramArrayOfByte;
    this.eaY = 1;
    this.eaZ = paramString1;
    this.eba = paramString2;
    this.ebb = paramInt;
  }

  public final pg ZD()
  {
    if ((this.cke != null) && (this.cke.ws() != null))
      return (pg)this.cke.ws();
    return null;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    b localb = new b();
    localb.a(new pf());
    localb.b(new pg());
    localb.es("/cgi-bin/micromsg-bin/ocrtranslation");
    localb.cN(392);
    localb.cO(199);
    localb.cP(1000000199);
    this.cke = localb.wx();
    pf localpf = (pf)this.cke.wr();
    localpf.fRz = (0x7FFFFFFF & (int)cj.FD());
    localpf.fRA = new rv().bM(this.eaX);
    localpf.fRB = this.eaY;
    localpf.fRC = this.eaZ;
    localpf.fRD = this.eba;
    localpf.fRE = this.ebb;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    pf localpf = (pf)((a)paramaj).wr();
    if ((localpf.fRz <= 0) || (cj.hX(localpf.fRD)) || (cj.hX(localpf.fRC)) || (localpf.fRB < 0) || (localpf.fRA == null) || (localpf.fRA.ayg() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.scanner.NetSceneOCRTranslate", "ERR: Security Check Failed");
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.scanner.NetSceneOCRTranslate", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " errMsg:" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 392;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.a.d
 * JD-Core Version:    0.6.2
 */