package com.tencent.mm.plugin.scanner.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.sd;
import com.tencent.mm.protocal.a.se;
import com.tencent.mm.sdk.platformtools.cj;

public final class f extends x
  implements ab
{
  private m cjh;
  private int ckU;
  private a cke;
  private byte[] eaX;
  private int eaY = 1;
  private int ebb;
  private int offset;

  public f(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.eaX = paramArrayOfByte;
    this.eaY = 1;
    this.ckU = paramInt1;
    this.offset = 0;
    this.ebb = paramInt2;
  }

  public final se ZF()
  {
    if ((this.cke != null) && (this.cke.ws() != null))
      return (se)this.cke.ws();
    return null;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    b localb = new b();
    localb.a(new sd());
    localb.b(new se());
    localb.es("/cgi-bin/micromsg-bin/scanimage");
    localb.cN(393);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    sd localsd = (sd)this.cke.wr();
    localsd.fRz = (0x7FFFFFFF & (int)cj.FD());
    localsd.fRA = new rv().bM(this.eaX);
    localsd.fLI = this.ckU;
    localsd.fAE = this.offset;
    if (this.offset + this.eaX.length < this.ckU);
    for (localsd.fAK = 0; ; localsd.fAK = 1)
    {
      localsd.fRB = this.eaY;
      localsd.fRE = this.ebb;
      return a(paramr, this.cke, this);
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    sd localsd = (sd)((a)paramaj).wr();
    if ((localsd.fRz <= 0) || (localsd.fRB < 0) || (localsd.fRA == null) || (localsd.fRA.ayg() <= 0) || (localsd.fLI <= 0) || (localsd.fAE < 0) || (localsd.fAE + localsd.fRA.ayg() > localsd.fLI))
    {
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = Integer.valueOf(localsd.fRB);
      arrayOfObject1[1] = Integer.valueOf(localsd.fLI);
      arrayOfObject1[2] = Integer.valueOf(localsd.fAE);
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.scanner.NetSceneScanImage", "ERR: Security Check Failed, imageType = %s, totalLen = %s, offset = %s", arrayOfObject1);
      if (localsd.fRA != null)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(localsd.fRA.ayg());
        com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.scanner.NetSceneScanImage", "buffer length = %s", arrayOfObject2);
      }
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.scanner.NetSceneScanImage", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " errMsg:" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 393;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.a.f
 * JD-Core Version:    0.6.2
 */