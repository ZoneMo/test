package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.ax;
import com.tencent.mm.model.be;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.n.z;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.protocal.a.en;
import com.tencent.mm.protocal.a.eo;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;

public final class p extends x
  implements ab
{
  private static ax cBH = null;
  private static List cBI = new ArrayList();
  private int cAz = 0;
  private boolean cBJ = false;
  private boolean cBK = false;
  private m cjh;
  private a cke;
  private ay ckr = new ay(new r(this), false);
  private String rD;

  public p(String paramString)
  {
    boolean bool = false;
    if (paramString != null)
      bool = true;
    Assert.assertTrue(bool);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadVoice", "NetSceneDownloadVoice:  file:" + paramString);
    this.rD = paramString;
  }

  private void Ei()
  {
    String str = this.rD;
    ak localak;
    if (str == null)
      localak = null;
    while (localak != null)
    {
      if (cBH != null)
        cBH.b(localak);
      Iterator localIterator = cBI.iterator();
      while (localIterator.hasNext())
        an.i(new q(this, (c)localIterator.next(), localak));
      bh localbh = bc.Er().hB(str);
      if (localbh == null)
        localak = null;
      else
        localak = be.uz().sw().bU(localbh.AF());
    }
  }

  public static void a(ax paramax)
  {
    if (cBH == null)
      cBH = paramax;
  }

  public static void a(c paramc)
  {
    if (!cBI.contains(paramc))
      cBI.add(paramc);
  }

  public static void b(c paramc)
  {
    cBI.remove(paramc);
  }

  public final int DC()
  {
    return this.cAz;
  }

  public final int a(com.tencent.mm.network.r paramr, m paramm)
  {
    this.cjh = paramm;
    if (this.rD == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVoice", "doScene:  filename null!");
      this.cAz = (10000 + j.qe());
      return -1;
    }
    String str = this.rD;
    bh localbh = bc.Er().hB(str);
    if ((localbh == null) || (!localbh.Ex()))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVoice", "Get info Failed file:" + this.rD);
      this.cAz = (10000 + j.qe());
      return -1;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadVoice", "doScene file:" + this.rD + " netTimes:" + localbh.DP());
    if (!bi.ho(this.rD))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVoice", "checkVoiceNetTimes Failed file:" + this.rD);
      bi.hd(this.rD);
      this.cAz = (10000 + j.qe());
      return -1;
    }
    int i = localbh.DH() - localbh.DI();
    if (i <= 0)
    {
      if (localbh.getStatus() == 5)
      {
        this.cBK = true;
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVoice", "doScene file:" + this.rD + " Net:" + localbh.DH() + " Local:" + localbh.DI());
        this.cAz = (10000 + j.qe());
        return -1;
      }
      bi.w(this.rD, localbh.DI());
      this.cAz = (10000 + j.qe());
      return -1;
    }
    if (localbh.vR() == localbh.DH())
      this.cBJ = true;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new en());
    localb.b(new eo());
    localb.es("/cgi-bin/micromsg-bin/downloadvoice");
    localb.cN(128);
    localb.cO(20);
    localb.cP(1000000020);
    this.cke = localb.wx();
    en localen = (en)this.cke.wr();
    localen.fzT = localbh.EB();
    localen.fzo = localbh.AH();
    localen.fAI = i;
    localen.fAE = localbh.DI();
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    en localen = (en)((a)paramaj).wr();
    if ((localen.fzo == 0) || (localen.fzT == null) || (localen.fzT.length() == 0) || (localen.fAI <= 0) || (localen.fAE < 0))
    {
      bi.hd(this.rD);
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadVoice", "onGYNetEnd file:" + this.rD + " + id:" + paramInt1 + " errtype:" + paramInt2 + " errCode:" + paramInt3);
    eo localeo = (eo)((a)paramaj).ws();
    if (localeo.fAG == 1)
    {
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneDownloadVoice", this.rD + " cancelFlag = 1");
      bi.hu(this.rD);
      return;
    }
    if (paramInt3 == -22)
    {
      bi.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 == 4) && (paramInt3 != 0) && (paramInt3 != -13) && (paramInt3 != -6))
    {
      bi.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVoice", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3 + " resp:" + paramaj.wv().xm());
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadVoice", "onGYNetEnd file:" + this.rD + " Recv:" + localeo.fAJ.ayg() + " fileOff:" + localeo.fAE);
    if (localeo.fAJ.ayh() == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVoice", "onGYNetEnd get recv Buffer null");
      bi.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    byte[] arrayOfByte = localeo.fAJ.ayh().toByteArray();
    if ((arrayOfByte == null) || (arrayOfByte.length == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVoice", "onGYNetEnd Recv Buf ZERO length ");
      bi.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    int i = bi.hp(this.rD).write(arrayOfByte, arrayOfByte.length, localeo.fAE);
    if (i < 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVoice", "onGYNetEnd Write Failed File:" + this.rD + " ret:" + i);
      bi.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadVoice", "OnRecvEnd : file:" + this.rD + " filesize:" + i);
    int j = bi.w(this.rD, i);
    if (j < 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVoice", "onGYNetEnd file:" + this.rD + "updateAfterRecv Ret:" + j);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (j == 1)
    {
      Ei();
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    long l = 1000L;
    if (this.cBJ)
      l = 0L;
    this.ckr.bO(l);
  }

  protected final void a(z paramz)
  {
    bi.hd(this.rD);
  }

  public final String getFileName()
  {
    return this.rD;
  }

  public final int getType()
  {
    return 128;
  }

  protected final int we()
  {
    return 100;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.p
 * JD-Core Version:    0.6.2
 */