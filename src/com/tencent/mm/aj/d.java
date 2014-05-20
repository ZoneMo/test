package com.tencent.mm.aj;

import com.tencent.mm.a.c;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.n.m;
import com.tencent.mm.n.z;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.xy;
import com.tencent.mm.protocal.a.xz;
import com.tencent.mm.sdk.platformtools.ay;

public final class d extends a
  implements ab
{
  private int cAz = 0;
  private boolean cBJ = false;
  private long cDo = -1L;
  private boolean cDp = false;
  private String[] cDr = new String[0];
  private int cDt = 0;
  private m cjh;
  private com.tencent.mm.n.a cke;
  ay ckr = new ay(new e(this), true);
  private int cxU = 0;
  private String filename = null;

  public d(String paramString, int paramInt)
  {
    this.filename = paramString;
    this.cDt = paramInt;
  }

  public final int DC()
  {
    return this.cAz;
  }

  public final void EE()
  {
    this.cBJ = true;
  }

  public final String[] EF()
  {
    return this.cDr;
  }

  public final long EG()
  {
    return this.cDo;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    int i = c.ar(this.filename);
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = this.filename;
    arrayOfObject1[1] = Integer.valueOf(i);
    arrayOfObject1[2] = Integer.valueOf(i);
    arrayOfObject1[3] = Boolean.valueOf(this.cBJ);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneVoiceInput", "read file: %s, filelen: %d, oldoff: %d, isFin: %b", arrayOfObject1);
    if (i <= 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneVoiceInput", "read failed :" + this.filename);
      this.cAz = (40000 + j.qe());
      return -1;
    }
    int j = i - this.cxU;
    if (j > 3960)
      j = 3960;
    byte[] arrayOfByte;
    while (true)
    {
      Object[] arrayOfObject2 = new Object[5];
      arrayOfObject2[0] = this.filename;
      arrayOfObject2[1] = Integer.valueOf(i);
      arrayOfObject2[2] = Boolean.valueOf(this.cBJ);
      arrayOfObject2[3] = Boolean.valueOf(this.cBJ);
      arrayOfObject2[4] = Boolean.valueOf(this.cDp);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneVoiceInput", "read file: %s, filelen: %d, oldoff: %b, isFin:%b, endFlag: %b", arrayOfObject2);
      arrayOfByte = c.g(this.filename, this.cxU, j);
      if (arrayOfByte != null)
        break;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneVoiceInput", j.qg() + " read failed :" + this.filename + " read:" + j);
      this.cAz = (40000 + j.qe());
      return -1;
      if ((j < 3300) && (!this.cBJ))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneVoiceInput", j.qg() + " read failed :" + this.filename + "can read:" + j + " isfinish:" + this.cBJ);
        this.cAz = (40000 + j.qe());
        return -1;
      }
      if (this.cBJ)
        this.cDp = true;
    }
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new xy());
    localb.b(new xz());
    localb.es("/cgi-bin/micromsg-bin/uploadinputvoice");
    localb.cN(349);
    localb.cO(158);
    localb.cP(1000000158);
    this.cke = localb.wx();
    xy localxy = (xy)this.cke.wr();
    localxy.eBo = ((String)com.tencent.mm.n.f.c(2, ""));
    localxy.fAJ = new rv().bM(arrayOfByte);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneVoiceInput", j.qg() + " read file:" + this.filename + " readlen:" + arrayOfByte.length + " datalen:" + localxy.fAJ.ayh().toByteArray().length + " dataiLen:" + localxy.fAJ.ayg() + " md5:" + com.tencent.mm.a.f.h(arrayOfByte) + " datamd5:" + com.tencent.mm.a.f.h(localxy.fAJ.ayh().toByteArray()));
    localxy.fAE = this.cxU;
    localxy.fYk = this.cDo;
    if (this.cDp);
    for (int k = 1; ; k = 0)
    {
      localxy.fAK = k;
      localxy.fYl = 0;
      localxy.fYm = 0;
      localxy.fYn = this.cDt;
      localxy.fYo = 0;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneVoiceInput", "clientId " + this.cDo);
      return a(paramr, this.cke, this);
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneVoiceInput", "onGYNetEnd file:" + this.filename + " errtype:" + paramInt2 + " errCode:" + paramInt3);
    xy localxy = (xy)((com.tencent.mm.n.a)paramaj).wr();
    xz localxz = (xz)((com.tencent.mm.n.a)paramaj).ws();
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneVoiceInput", j.qg() + " onGYNetEnd file:" + this.filename + " errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneVoiceInput", j.qg() + " onGYNetEnd  file:" + this.filename + " endflag:" + localxz.fAK);
    if (localxy.fAK == 1)
    {
      if ((localxz.fYp != null) && (localxz.fYp.ayh() != null))
      {
        String[] arrayOfString = new String[1];
        arrayOfString[0] = localxz.fYp.ayh().avA();
        this.cDr = arrayOfString;
      }
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.cxU = (localxy.fAE + localxy.fAJ.ayg());
    if (this.cBJ);
    for (long l = 0L; ; l = 500L)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneVoiceInput", "onGYNetEnd file:" + this.filename + " delay:" + l);
      this.ckr.bO(l);
      return;
    }
  }

  protected final void a(z paramz)
  {
    this.cjh.a(3, 40000 + j.qe(), "ecurityCheckError", this);
  }

  public final int getType()
  {
    return 349;
  }

  protected final int we()
  {
    return 20;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.aj.d
 * JD-Core Version:    0.6.2
 */