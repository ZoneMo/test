package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.be;
import com.tencent.mm.model.ce;
import com.tencent.mm.model.v;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.n.z;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.yl;
import com.tencent.mm.protocal.a.ym;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.i;
import junit.framework.Assert;

public final class s extends x
  implements ab
{
  private int cAz = 0;
  private boolean cBJ = false;
  private int cBN;
  private long cBO;
  private int cBP = 0;
  private int cBg = 0;
  private m cjh;
  private a cke;
  ay ckr;
  private String rD;

  public s(String paramString)
  {
    this(paramString, 0);
  }

  public s(String paramString, int paramInt)
  {
    this.ckr = new ay(new t(this), bool);
    if (paramString != null);
    while (true)
    {
      Assert.assertTrue(bool);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoice", "NetSceneUploadVoice:  file:" + paramString);
      this.rD = paramString;
      this.cBN = paramInt;
      return;
      bool = false;
    }
  }

  public final int DC()
  {
    return this.cAz;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    this.cBJ = false;
    if (this.rD == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoice", "doScene:  filename null!");
      this.cAz = (10000 + j.qe());
      return -1;
    }
    String str = this.rD;
    bh localbh = bc.Er().hB(str);
    if ((localbh == null) || (!localbh.Ey()))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoice", "Get info Failed file:" + this.rD);
      this.cAz = (10000 + j.qe());
      return -1;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoice", "doScene file:" + this.rD + " netTimes:" + localbh.DP());
    if (!bi.ho(this.rD))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoice", "checkVoiceNetTimes Failed file:" + this.rD);
      bi.hd(this.rD);
      this.cAz = (10000 + j.qe());
      return -1;
    }
    u localu1 = new u();
    int j;
    Object localObject;
    int i;
    int k;
    if (localbh.getStatus() == 8)
    {
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneUploadVoice", this.rD + " cancelFlag = 1");
      this.cBP = 0;
      bi.hv(localbh.getFileName());
      j = 1;
      localObject = localu1;
      i = 0;
      k = localbh.EA();
      if (k != 0)
        break label1515;
    }
    label1515: for (int m = 20 * ((-6 + this.cBg) / 32); ; m = k)
    {
      com.tencent.mm.n.b localb1 = new com.tencent.mm.n.b();
      localb1.a(new yl());
      localb1.b(new ym());
      localb1.es("/cgi-bin/micromsg-bin/uploadvoice");
      localb1.cN(127);
      localb1.cO(19);
      localb1.cP(1000000019);
      this.cke = localb1.wx();
      yl localyl = (yl)this.cke.wr();
      localyl.fzp = v.th();
      localyl.fzq = localbh.getUser();
      localyl.fAE = localbh.DH();
      localyl.fzT = localbh.EB();
      localyl.fFi = m;
      localyl.fAK = this.cBP;
      localyl.fzo = localbh.AH();
      localyl.fAG = j;
      localyl.fYP = this.cBN;
      localyl.fzz = ce.uY();
      localyl.fYN = i;
      if (j != 1)
        localyl.fAJ = new rv().l(((u)localObject).buf, ((u)localObject).ccL);
      for (localyl.fAI = ((u)localObject).ccL; ; localyl.fAI = 1)
      {
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneUploadVoice", "cancelFlag:" + j + " endFlag:" + this.cBP + " svrId:" + localbh.AH());
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneUploadVoice", "doscene msgId:" + localyl.fzo + " user:" + localyl.fzq + " offset:" + localyl.fAE + " dataLen:" + localyl.fAJ.ayg() + " endFlag:" + localyl.fAK);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoice", "doScene MsgId:" + localbh.AH() + " file:" + this.rD + " readBytes:" + ((u)localObject).ccL + " neTTTOff:" + localbh.DH() + " neWWWOff:" + this.cBg + " endFlag:" + this.cBP + " cancelFlag:" + j + " status:" + localbh.getStatus());
        this.cBO = System.currentTimeMillis();
        return a(paramr, this.cke, this);
        if (localbh.getStatus() == 3)
          this.cBJ = true;
        b localb = bi.hq(this.rD);
        if (localb == null)
        {
          this.cAz = (10000 + j.qe());
          return -1;
        }
        i = localb.getFormat();
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoice", "format " + i);
        u localu2 = localb.O(localbh.DH(), 6000);
        if (localu2 == null)
        {
          this.cAz = (10000 + j.qe());
          return -1;
        }
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoice", "doScene READ file[" + this.rD + "] read ret:" + localu2.ret + " readlen:" + localu2.ccL + " newOff:" + localu2.cBg + " netOff:" + localbh.DH() + " line:" + j.qe());
        if (localu2.ret < 0)
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoice", "Err doScene READ file[" + this.rD + "] read ret:" + localu2.ret + " readlen:" + localu2.ccL + " newOff:" + localu2.cBg + " netOff:" + localbh.DH());
          bi.hd(this.rD);
          this.cAz = (10000 + j.qe());
          return -1;
        }
        this.cBg = localu2.cBg;
        if ((this.cBg < localbh.DH()) || (this.cBg >= 469000))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoice", "Err doScene READ file[" + this.rD + "] newOff:" + this.cBg + " OldtOff:" + localbh.DH());
          bi.hd(this.rD);
          this.cAz = (10000 + j.qe());
          return -1;
        }
        this.cBP = 0;
        if ((localu2.ccL == 0) && (!this.cBJ))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoice", "doScene:  file:" + this.rD + " No Data temperature , will be retry");
          this.cAz = (10000 + j.qe());
          return -1;
        }
        if (this.cBJ)
        {
          if (localbh.vR() <= 0)
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoice", "Err doScene READ file[" + this.rD + "] read totalLen:" + localbh.vR());
            bi.hd(this.rD);
            this.cAz = (10000 + j.qe());
            return -1;
          }
          if ((localbh.vR() > this.cBg) && (localu2.ccL < 6000))
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoice", "Err doScene READ file[" + this.rD + "] readlen:" + localu2.ccL + " newOff:" + localu2.cBg + " netOff:" + localbh.DH() + " totalLen:" + localbh.vR());
            bi.hd(this.rD);
            this.cAz = (10000 + j.qe());
            return -1;
          }
          if (localbh.vR() <= this.cBg)
            this.cBP = 1;
        }
        localObject = localu2;
        j = 0;
        break;
        localyl.fAJ = new rv().a(com.tencent.mm.am.b.au(new byte[1]));
      }
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    yl localyl = (yl)((a)paramaj).wr();
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneUploadVoice", "check msgId:" + localyl.fzo + " offset:" + localyl.fAE + " dataLen:" + localyl.fAJ.ayg() + " endFlag:" + localyl.fAK);
    if (((localyl.fzo == 0) && (localyl.fAE != 0)) || (((localyl.fAJ == null) || (localyl.fAJ.ayg() == 0)) && (localyl.fAK != 1) && (localyl.fAG != 1)))
      return com.tencent.mm.n.aa.cmi;
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoice", "onGYNetEnd file:" + this.rD + " errtype:" + paramInt2 + " errCode:" + paramInt3);
    yl localyl = (yl)((a)paramaj).wr();
    ym localym = (ym)((a)paramaj).ws();
    if ((paramInt2 == 4) && (paramInt3 == -22))
    {
      String str3 = this.rD;
      bh localbh2 = bc.Er().hB(str3);
      if (localbh2 != null)
      {
        if (localbh2.getStatus() == 3)
        {
          ak localak2 = be.uz().sw().bU(localbh2.AF());
          localak2.setContent(bf.a(localbh2.DG(), localbh2.EA(), false));
          localak2.setStatus(2);
          localak2.cL(264);
          be.uz().sw().a(localbh2.AF(), localak2);
        }
        localbh2.setStatus(97);
        localbh2.H(System.currentTimeMillis() / 1000L);
        localbh2.cL(320);
        bi.b(localbh2);
      }
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
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoice", "onGYNetEnd file:" + this.rD + " errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoice", "onGYNetEnd msgId:" + localym.fzo + " toUser:" + localyl.fzq);
    if ((localym.fzo <= 0) && (!i.tC(localyl.fzq)))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoice", "onGYNetEnd file:" + this.rD + " getMsgId:" + localym.fzo + " netoff:" + localym.fAE);
      bi.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(localym.fzo);
    arrayOfObject[1] = Integer.valueOf(at.cHK);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoice", "dkmsgid  set svrmsgid %d -> %d", arrayOfObject);
    if ((10007 == at.cHJ) && (at.cHK != 0))
    {
      localym.fzo = at.cHK;
      at.cHK = 0;
    }
    String str1 = this.rD;
    int i = this.cBg;
    int j = localym.fzo;
    String str2 = localym.fzT;
    int k = this.cBP;
    int m = this.cBN;
    int i1;
    if (str1 == null)
      i1 = -1;
    while (true)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoice", "dkmsgid onGYNetEnd updateAfterSend:" + i1 + " file:" + this.rD + " MsgSvrId:" + localym.fzo + " clientId:" + localym.fzT + " neWWOff:" + this.cBg + " neTTTT:" + localym.fAI + " forwardflag:" + this.cBN);
      if (i1 >= 0)
        break;
      bi.hd(this.rD);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoice", "onGYNetEnd file:" + this.rD + "UpdateAfterSend Ret:" + i1);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.VoiceLogic", "dkmsgid UpdateAfterSend file:[" + str1 + "] newOff:" + i + " SvrID:" + j + " clientID:" + str2 + " hasSendEndFlag " + k);
      bh localbh1 = bc.Er().hB(str1);
      if (localbh1 == null)
      {
        i1 = -1;
      }
      else
      {
        localbh1.ev(i);
        localbh1.H(System.currentTimeMillis() / 1000L);
        localbh1.cL(264);
        if ((cj.hX(localbh1.EB())) && (str2 != null))
        {
          localbh1.hn(str2);
          localbh1.cL(0x200 | localbh1.vU());
        }
        if ((localbh1.AH() == 0) && (j != 0))
        {
          localbh1.dA(j);
          localbh1.cL(0x4 | localbh1.vU());
        }
        int n = localbh1.vR();
        i1 = 0;
        if (n <= i)
        {
          int i2 = localbh1.getStatus();
          i1 = 0;
          if (i2 == 3)
          {
            i1 = 0;
            if (k == 1)
            {
              localbh1.setStatus(99);
              localbh1.cL(0x40 | localbh1.vU());
              ak localak1 = new ak();
              localak1.uK(localbh1.getUser());
              localak1.dA(localbh1.AH());
              localak1.setStatus(2);
              localak1.setContent(bf.a(localbh1.DG(), localbh1.EA(), false));
              localak1.cL(2314);
              localak1.mi(m);
              be.uz().sw().a(localbh1.AF(), localak1);
              com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.VoiceLogic", "END!!! updateSend  file:" + str1 + " total:" + localbh1.vR() + " status:" + localbh1.getStatus() + " netTimes:" + localbh1.DP());
              i1 = 1;
              bc.Er().hy(str1);
            }
          }
        }
        if (!bi.b(localbh1))
          i1 = -4;
      }
    }
    if (i1 == 1)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoice", "onGYNetEnd finish file:" + this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (this.cBJ);
    for (long l = 0L; ; l = 500L)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoice", "onGYNetEnd file:" + this.rD + " delay:" + l);
      this.ckr.bO(l);
      return;
    }
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
    return 127;
  }

  protected final int we()
  {
    return 60;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.s
 * JD-Core Version:    0.6.2
 */