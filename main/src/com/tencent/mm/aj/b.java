package com.tencent.mm.aj;

import com.tencent.mm.compatible.g.j;
import com.tencent.mm.n.m;
import com.tencent.mm.n.z;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.zg;
import com.tencent.mm.protocal.a.zh;
import com.tencent.mm.sdk.platformtools.ay;
import java.util.LinkedList;

public final class b extends a
  implements ab
{
  private int cAz = 0;
  private boolean cBJ = false;
  private long cDo = -1L;
  private boolean cDp = false;
  private int cDq;
  private String[] cDr = new String[0];
  private m cjh;
  private com.tencent.mm.n.a cke;
  ay ckr = new ay(new c(this), true);
  private int cxU = 0;
  private String filename = null;

  public b(String paramString, int paramInt)
  {
    this.filename = paramString;
    this.cDq = paramInt;
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
    int i = 3960;
    this.cjh = paramm;
    int j = com.tencent.mm.a.c.ar(this.filename);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneVoiceAddr", j.qg() + " read file:" + this.filename + " filelen:" + j + " oldoff:" + this.cxU + " isFin:" + this.cBJ);
    if (j <= 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneVoiceAddr", "read failed :" + this.filename);
      this.cAz = (40000 + j.qe());
      return -1;
    }
    int k = j - this.cxU;
    if (k > i);
    byte[] arrayOfByte;
    while (true)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneVoiceAddr", j.qg() + " read file:" + this.filename + " filelen:" + j + " oldoff:" + this.cxU + " isFin:" + this.cBJ + " endFlag:" + this.cDp);
      arrayOfByte = com.tencent.mm.a.c.g(this.filename, this.cxU, i);
      if (arrayOfByte != null)
        break;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneVoiceAddr", j.qg() + " read failed :" + this.filename + " read:" + i);
      this.cAz = (40000 + j.qe());
      return -1;
      if ((k < 3300) && (!this.cBJ))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneVoiceAddr", j.qg() + " read failed :" + this.filename + "can read:" + k + " isfinish:" + this.cBJ);
        this.cAz = (40000 + j.qe());
        return -1;
      }
      if (this.cBJ)
        this.cDp = true;
      i = k;
    }
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new zg());
    localb.b(new zh());
    localb.es("/cgi-bin/micromsg-bin/voiceaddr");
    localb.cN(206);
    localb.cO(94);
    localb.cP(1000000094);
    this.cke = localb.wx();
    zg localzg = (zg)this.cke.wr();
    localzg.fAJ = new rv().bM(arrayOfByte);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneVoiceAddr", j.qg() + " read file:" + this.filename + " readlen:" + arrayOfByte.length + " datalen:" + localzg.fAJ.ayh().toByteArray().length + " dataiLen:" + localzg.fAJ.ayg() + " md5:" + com.tencent.mm.a.f.h(arrayOfByte) + " datamd5:" + com.tencent.mm.a.f.h(localzg.fAJ.ayh().toByteArray()));
    localzg.eBo = ((String)com.tencent.mm.n.f.c(2, ""));
    localzg.fAE = this.cxU;
    localzg.fYk = this.cDo;
    if (this.cDp);
    for (int m = 1; ; m = 0)
    {
      localzg.fAK = m;
      localzg.fYl = 0;
      localzg.fYm = 0;
      localzg.fYn = 0;
      localzg.fYo = 0;
      localzg.fZy = this.cDq;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneVoiceAddr", "clientId " + this.cDo);
      return a(paramr, this.cke, this);
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneVoiceAddr", j.qg() + " onGYNetEnd file:" + this.filename + " errtype:" + paramInt2 + " errCode:" + paramInt3);
    zg localzg = (zg)((com.tencent.mm.n.a)paramaj).wr();
    zh localzh = (zh)((com.tencent.mm.n.a)paramaj).ws();
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneVoiceAddr", j.qg() + " onGYNetEnd file:" + this.filename + " errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneVoiceAddr", j.qg() + " onGYNetEnd  file:" + this.filename + " endflag:" + localzh.fAK + " lst:" + localzh.fBd);
    if (localzg.fAK == 1)
    {
      this.cDr = new String[localzh.fBd.size()];
      for (int i = 0; i < localzh.fBd.size(); i++)
        this.cDr[i] = ((rw)localzh.fBd.get(i)).getString();
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.cxU = (localzg.fAE + localzg.fAJ.ayg());
    if (this.cBJ);
    for (long l = 0L; ; l = 500L)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneVoiceAddr", "onGYNetEnd file:" + this.filename + " delay:" + l);
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
    return 206;
  }

  protected final int we()
  {
    return 20;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.aj.b
 * JD-Core Version:    0.6.2
 */