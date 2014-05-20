package com.tencent.mm.af;

import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.yc;
import com.tencent.mm.protocal.a.yd;
import com.tencent.mm.sdk.platformtools.ay;

public final class a extends x
  implements ab
{
  private m cjh;
  private com.tencent.mm.n.a cke;
  ay ckr = new ay(new b(this), true);
  private String cxS = null;
  private String cxT = null;
  private int cxU = 0;
  private int cxV = 5;
  private String filename = null;

  public a(String paramString, int paramInt)
  {
    this.filename = paramString;
    this.cxV = paramInt;
    int i = c.ar(this.filename);
    this.cxT = f.h(c.g(this.filename, 0, i));
  }

  public final int a(r paramr, m paramm)
  {
    int i = 3960;
    this.cjh = paramm;
    int j = c.ar(this.filename);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadMedia", j.qg() + " read file:" + this.filename + " filelen:" + j + " oldoff:" + this.cxU + "this.filemd5 " + this.cxT);
    if (j <= 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadMedia", "read failed :" + this.filename);
      return -1;
    }
    int k = j - this.cxU;
    if (k > i);
    while (true)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadMedia", j.qg() + " read file:" + this.filename + " filelen:" + j + " oldoff:" + this.cxU + "  canReadLen " + i);
      byte[] arrayOfByte = c.g(this.filename, this.cxU, i);
      com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
      localb.a(new yc());
      localb.b(new yd());
      localb.es("/cgi-bin/micromsg-bin/mmuploadmedia");
      localb.cN(240);
      localb.cO(111);
      localb.cP(1000000111);
      this.cke = localb.wx();
      yc localyc = (yc)this.cke.wr();
      localyc.fYt = new rw().sn(this.cxS);
      localyc.fAJ = new rv().bM(arrayOfByte);
      localyc.fAU = arrayOfByte.length;
      localyc.fYu = new rw().sn(this.cxT);
      localyc.fAL = j;
      localyc.fEd = this.cxU;
      localyc.fYv = this.cxV;
      return a(paramr, this.cke, this);
      i = k;
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadMedia", j.qg() + " onGYNetEnd file:" + this.filename + " errtype:" + paramInt2 + " errCode:" + paramInt3);
    yc localyc = (yc)((com.tencent.mm.n.a)paramaj).wr();
    yd localyd = (yd)((com.tencent.mm.n.a)paramaj).ws();
    String str = localyd.fAS;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadMedia", "md5  " + str + "  " + localyd.toString());
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadMedia", j.qg() + " onGYNetEnd file:" + this.filename + " errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadMedia", j.qg() + " onGYNetEnd  file:" + this.filename);
    if ((localyc.fAL <= localyc.fAU + localyc.fEd) && (str != null) && (!str.equals("0")))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.cxU = (localyc.fEd + localyc.fAJ.ayg());
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadMedia", "onGYNetEnd file:" + this.filename + " delay:500");
    this.ckr.bO(500L);
  }

  public final String getFileName()
  {
    return this.filename;
  }

  public final int getType()
  {
    return 240;
  }

  protected final int we()
  {
    return 60;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.af.a
 * JD-Core Version:    0.6.2
 */