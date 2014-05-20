package com.tencent.mm.plugin.scanner.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.jy;
import com.tencent.mm.protocal.a.jz;

public final class c extends x
  implements ab
{
  private int bLN;
  private String bPE;
  private m cjh;
  private a cke;

  public c(String paramString, int paramInt)
  {
    this.bPE = paramString;
    this.bLN = paramInt;
  }

  public final jz ZC()
  {
    if ((this.cke != null) && (this.cke.ws() != null))
      return (jz)this.cke.ws();
    return null;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    b localb = new b();
    localb.a(new jy());
    localb.b(new jz());
    localb.es("/cgi-bin/micromsg-bin/getproductinfo");
    localb.cN(435);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    jy localjy = (jy)this.cke.wr();
    localjy.fFB = this.bPE;
    localjy.fyJ = this.bLN;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    jy localjy = (jy)((a)paramaj).wr();
    if ((localjy.fyJ < 0) || (localjy.fFB == null) || (localjy.fFB.length() <= 0))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(localjy.fyJ);
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.scanner.NetSceneGetProductInfo", "ERR: Security Check Failed, Scene = %s", arrayOfObject);
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.scanner.NetSceneGetProductInfo", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " errMsg:" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 435;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.a.c
 * JD-Core Version:    0.6.2
 */