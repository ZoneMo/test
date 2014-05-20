package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.v;
import com.tencent.mm.n.a;
import com.tencent.mm.n.x;
import com.tencent.mm.n.z;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.yl;
import com.tencent.mm.protocal.a.ym;
import com.tencent.mm.sdk.platformtools.ay;
import junit.framework.Assert;

public final class b extends x
  implements ab
{
  private int cAz = 0;
  private boolean cBJ = false;
  private long cBO;
  private int cBP = 0;
  private int cBg = 0;
  private com.tencent.mm.n.m cjh;
  private a cke;
  ay ckr;
  private String rD;

  public b(String paramString)
  {
    this.ckr = new ay(new c(this), bool);
    if (paramString != null);
    while (true)
    {
      Assert.assertTrue(bool);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoiceRemind", "NetSceneUploadVoice:  file:" + paramString);
      this.rD = paramString;
      return;
      bool = false;
    }
  }

  public final int DC()
  {
    return this.cAz;
  }

  public final int a(r paramr, com.tencent.mm.n.m paramm)
  {
    this.cjh = paramm;
    this.cBJ = false;
    if (this.rD == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoiceRemind", "doScene:  filename null!");
      this.cAz = (10000 + j.qe());
      return -1;
    }
    String str = this.rD;
    m localm = f.ali().pp(str);
    if ((localm == null) || (!localm.Ey()))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoiceRemind", "Get info Failed file:" + this.rD);
      this.cAz = (10000 + j.qe());
      return -1;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoiceRemind", "doScene file:" + this.rD + " netTimes:" + localm.DP());
    if (!n.ho(this.rD))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoiceRemind", "checkVoiceNetTimes Failed file:" + this.rD);
      n.hd(this.rD);
      this.cAz = (10000 + j.qe());
      return -1;
    }
    e locale1 = new e();
    Object localObject;
    int i;
    int j;
    if (localm.getStatus() == 8)
    {
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneUploadVoiceRemind", this.rD + " cancelFlag = 1");
      this.cBP = 1;
      n.hv(localm.getFileName());
      localObject = locale1;
      i = 1;
      j = localm.EA();
      if (j != 0)
        break label1533;
    }
    label1533: for (int k = 20 * ((-6 + this.cBg) / 32); ; k = j)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoiceRemind", "info.getMsgSvrId() " + localm.AH());
      com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
      localb.a(new yl());
      localb.b(new ym());
      localb.es("/cgi-bin/micromsg-bin/uploadvoicerecognize");
      localb.cN(329);
      localb.cO(157);
      localb.cP(1000000157);
      this.cke = localb.wx();
      yl localyl = (yl)this.cke.wr();
      localyl.fzp = v.th();
      localyl.fzq = localm.getUser();
      localyl.fAE = localm.DH();
      localyl.fzT = localm.EB();
      localyl.fFi = k;
      localyl.fAK = this.cBP;
      localyl.fzo = localm.AH();
      localyl.fAG = i;
      localyl.fYO = ((int)(localm.DL() / 1000L));
      localyl.fYN = 1;
      if (i != 1)
        localyl.fAJ = new rv().l(((e)localObject).buf, ((e)localObject).ccL);
      for (localyl.fAI = ((e)localObject).ccL; ; localyl.fAI = 1)
      {
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneUploadVoiceRemind", "cancelFlag:" + i + " endFlag:" + this.cBP + " svrId:" + localm.AH());
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneUploadVoiceRemind", "doscene msgId:" + localyl.fzo + " user:" + localyl.fzq + " offset:" + localyl.fAE + " dataLen:" + localyl.fAJ.ayg() + " endFlag:" + localyl.fAK);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoiceRemind", "doScene MsgId:" + localm.AH() + " file:" + this.rD + " readBytes:" + ((e)localObject).ccL + " neTTTOff:" + localm.DH() + " neWWWOff:" + this.cBg + " endFlag:" + this.cBP + " cancelFlag:" + i + " status:" + localm.getStatus());
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoiceRemind", "tiger log " + localyl.toString());
        this.cBO = System.currentTimeMillis();
        return a(paramr, this.cke, this);
        if (localm.getStatus() == 3)
          this.cBJ = true;
        d locald = n.pm(this.rD);
        if (locald == null)
        {
          this.cAz = (10000 + j.qe());
          return -1;
        }
        e locale2 = locald.jo(localm.DH());
        if (locale2 == null)
        {
          this.cAz = (10000 + j.qe());
          return -1;
        }
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoiceRemind", "doScene READ file[" + this.rD + "] read ret:" + locale2.ret + " readlen:" + locale2.ccL + " newOff:" + locale2.cBg + " netOff:" + localm.DH() + " line:" + j.qe());
        if (locale2.ret < 0)
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoiceRemind", "Err doScene READ file[" + this.rD + "] read ret:" + locale2.ret + " readlen:" + locale2.ccL + " newOff:" + locale2.cBg + " netOff:" + localm.DH());
          n.hd(this.rD);
          this.cAz = (10000 + j.qe());
          return -1;
        }
        this.cBg = locale2.cBg;
        if ((this.cBg < localm.DH()) || (this.cBg >= 469000))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoiceRemind", "Err doScene READ file[" + this.rD + "] newOff:" + this.cBg + " OldtOff:" + localm.DH());
          n.hd(this.rD);
          this.cAz = (10000 + j.qe());
          return -1;
        }
        this.cBP = 0;
        if ((locale2.ccL == 0) && (!this.cBJ))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoiceRemind", "doScene:  file:" + this.rD + " No Data temperature , will be retry");
          n.hd(this.rD);
          this.cAz = (10000 + j.qe());
          return -1;
        }
        if (this.cBJ)
        {
          if (localm.vR() <= 0)
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoiceRemind", "Err doScene READ file[" + this.rD + "] read totalLen:" + localm.vR());
            n.hd(this.rD);
            this.cAz = (10000 + j.qe());
            return -1;
          }
          if ((localm.vR() > this.cBg) && (locale2.ccL < 6000))
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoiceRemind", "Err doScene READ file[" + this.rD + "] readlen:" + locale2.ccL + " newOff:" + locale2.cBg + " netOff:" + localm.DH() + " totalLen:" + localm.vR());
            n.hd(this.rD);
            this.cAz = (10000 + j.qe());
            return -1;
          }
          if (localm.vR() <= this.cBg)
            this.cBP = 1;
        }
        localObject = locale2;
        i = 0;
        break;
        localyl.fAJ = new rv().a(com.tencent.mm.am.b.au(new byte[1]));
      }
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    yl localyl = (yl)((a)paramaj).wr();
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneUploadVoiceRemind", "check : offset:" + localyl.fAE + " dataLen:" + localyl.fAJ.ayg() + " endFlag:" + localyl.fAK);
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoiceRemind", "onGYNetEnd file:" + this.rD + " errtype:" + paramInt2 + " errCode:" + paramInt3);
    yl localyl = (yl)((a)paramaj).wr();
    ym localym = (ym)((a)paramaj).ws();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoiceRemind", "tiger log resp " + localym.toString());
    if ((paramInt2 == 4) && (paramInt3 == -22))
    {
      n.he(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 == 4) && (paramInt3 != 0) && (paramInt3 != -13) && (paramInt3 != -6))
    {
      n.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoiceRemind", "onGYNetEnd file:" + this.rD + " errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoiceRemind", "onGYNetEnd msgId:" + localym.fzo + " toUser:" + localyl.fzq);
    int i = n.a(this.rD, this.cBg, localym.fzo, localym.fzT, this.cBP);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoiceRemind", "onGYNetEnd updateAfterSend:" + i + " file:" + this.rD + " MsgSvrId:" + localym.fzo + " clientId:" + localym.fzT + " neWWOff:" + this.cBg + " neTTTT:" + localym.fAI);
    if (i < 0)
    {
      n.hd(this.rD);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVoiceRemind", "onGYNetEnd file:" + this.rD + "UpdateAfterSend Ret:" + i);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (i == 1)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoiceRemind", "onGYNetEnd finish file:" + this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (this.cBJ);
    for (long l = 0L; ; l = 500L)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVoiceRemind", "onGYNetEnd file:" + this.rD + " delay:" + l);
      this.ckr.bO(l);
      return;
    }
  }

  protected final void a(z paramz)
  {
    n.hd(this.rD);
  }

  public final String getFileName()
  {
    return this.rD;
  }

  public final int getType()
  {
    return 329;
  }

  protected final int we()
  {
    return 240;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.b
 * JD-Core Version:    0.6.2
 */