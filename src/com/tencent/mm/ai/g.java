package com.tencent.mm.ai;

import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.n;
import com.tencent.mm.n.a;
import com.tencent.mm.n.f;
import com.tencent.mm.n.x;
import com.tencent.mm.n.z;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.bm;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.yg;
import com.tencent.mm.protocal.a.yh;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import java.util.Map;
import junit.framework.Assert;

public final class g extends x
  implements ab
{
  private static int cAC = 32000;
  private boolean cAA = false;
  private final int cAD;
  private final long cAE = 1800000L;
  boolean cAF = false;
  private int cAG = -1;
  int cAH = 0;
  private q cAy;
  private int cAz = 0;
  private com.tencent.mm.n.m cjh;
  private a cke;
  ay ckr;
  private String ctR = "";
  private n ctV = new h(this);
  com.tencent.mm.compatible.g.k cuZ = null;
  private String rD;
  private long startTime = 0L;

  public g(String paramString)
  {
    this.ckr = new ay(new j(this), bool);
    if (paramString != null)
    {
      Assert.assertTrue(bool);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVideo", "NetSceneUploadVideo:  file:" + paramString);
      this.rD = paramString;
      this.cAy = v.hh(paramString);
      if (this.cAy == null)
        break label159;
    }
    label159: for (this.cAD = 2500; ; this.cAD = 0)
    {
      this.cuZ = new com.tencent.mm.compatible.g.k();
      return;
      bool = false;
      break;
    }
  }

  public final int DC()
  {
    return this.cAz;
  }

  public final int a(com.tencent.mm.network.r paramr, com.tencent.mm.n.m paramm)
  {
    this.cjh = paramm;
    this.cAy = v.hh(this.rD);
    if ((this.cAy == null) || ((this.cAy.getStatus() != 104) && (this.cAy.getStatus() != 103)))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "Get info Failed file:" + this.rD);
      this.cAz = (0 - (10000 + com.tencent.mm.compatible.g.j.qe()));
      return -1;
    }
    StringBuilder localStringBuilder = new StringBuilder("doscene file:").append(this.rD).append(" stat:").append(this.cAy.getStatus()).append(" [").append(this.cAy.DJ()).append(",").append(this.cAy.DK()).append("] [").append(this.cAy.DH()).append(",").append(this.cAy.vR()).append("]  netTimes:").append(this.cAy.DP()).append(" times:");
    int i = this.cAH;
    this.cAH = (i + 1);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVideo", i);
    if (this.startTime == 0L)
    {
      this.startTime = cj.FD();
      this.cAG = this.cAy.DH();
    }
    int j;
    if (w.dc(this.cAy.getUser()))
    {
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = this.cAy.getUser();
      com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneUploadVideo", "cdntra not use cdn user:%s", arrayOfObject4);
      j = 0;
    }
    while (j != 0)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.rD;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "cdntra use cdn return -1 for onGYNetEnd clientid:%s", arrayOfObject1);
      return 0;
      com.tencent.mm.modelcdntran.j.yy();
      if ((!com.tencent.mm.modelcdntran.b.ys()) && (this.cAy.DS() != 1))
      {
        Object[] arrayOfObject3 = new Object[2];
        com.tencent.mm.modelcdntran.j.yy();
        arrayOfObject3[0] = Boolean.valueOf(com.tencent.mm.modelcdntran.b.ys());
        arrayOfObject3[1] = Integer.valueOf(this.cAy.DS());
        com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneUploadVideo", "cdntra not use cdn flag:%b getCdnInfo:%d", arrayOfObject3);
        j = 0;
      }
      else
      {
        this.ctR = com.tencent.mm.modelcdntran.h.a("upvideo", this.cAy.DL(), this.cAy.getUser(), this.cAy.getFileName());
        if (cj.hX(this.ctR))
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = this.cAy.getFileName();
          com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneUploadVideo", "cdntra genClientId failed not use cdn file:%s", arrayOfObject2);
          j = 0;
        }
        else
        {
          String str1 = m.DE().ha(this.rD);
          String str2 = m.DE().gZ(this.rD);
          com.tencent.mm.modelcdntran.m localm = new com.tencent.mm.modelcdntran.m();
          localm.cpJ = this.ctV;
          localm.field_mediaId = this.ctR;
          localm.field_fullpath = str2;
          localm.field_thumbpath = str1;
          localm.field_fileType = CdnTransportEngine.coP;
          localm.field_talker = this.cAy.getUser();
          localm.field_priority = CdnTransportEngine.coK;
          localm.field_needStorage = false;
          localm.field_isStreamMedia = false;
          Map localMap = com.tencent.mm.sdk.platformtools.u.aL(this.cAy.DT(), "msg");
          if (localMap != null)
          {
            localm.field_fileId = ((String)localMap.get(".msg.videomsg.$cdnvideourl"));
            localm.field_aesKey = ((String)localMap.get(".msg.videomsg.$aeskey"));
          }
          while (true)
          {
            if (com.tencent.mm.modelcdntran.j.yy().b(localm))
              break label671;
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "cdntra addSendTask failed.");
            this.ctR = "";
            j = 0;
            break;
            com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneUploadVideo", "cdntra parse video recv xml failed");
          }
          label671: if (this.cAy.DS() != 1)
          {
            this.cAy.DR();
            this.cAy.setStatus(104);
            this.cAy.cL(524544);
            v.d(this.cAy);
          }
          j = 1;
        }
      }
    }
    yg localyg;
    if (this.cAy.DQ() == 1)
    {
      this.cAF = true;
      com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
      localb.a(new yg());
      localb.b(new yh());
      localb.es("/cgi-bin/micromsg-bin/uploadvideo");
      localb.cN(149);
      localb.cO(39);
      localb.cP(1000000039);
      this.cke = localb.wx();
      localyg = (yg)this.cke.wr();
      localyg.fzp = ((String)f.c(2, ""));
      localyg.fzq = this.cAy.getUser();
      localyg.fzT = this.rD;
      if (this.cAF)
        localyg.fYK = 2;
      localyg.fYJ = this.cAy.DO();
      localyg.fOc = this.cAy.DK();
      localyg.fYG = this.cAy.vR();
      if (!bm.ac(al.getContext()))
        break label1210;
    }
    u localu2;
    label1210: for (int k = 1; ; k = 2)
    {
      localyg.fFg = k;
      localyg.fOf = 2;
      localyg.fYH = 0;
      localyg.fYI = new rv().bM(new byte[0]);
      localyg.fOe = new rv().bM(new byte[0]);
      if (this.cAy.getStatus() != 103)
        break label1458;
      localu2 = r.m(m.DE().ha(this.rD), this.cAy.DJ(), cAC);
      if ((localu2 != null) && (localu2.ret >= 0) && (localu2.ccL != 0))
        break label1216;
      v.hd(this.rD);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "doScene READ THUMB[" + this.rD + "]  Error ");
      this.cAz = (0 - (10000 + com.tencent.mm.compatible.g.j.qe()));
      return -1;
      if (600L + this.cAy.DL() < cj.FC())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "create time check error:" + this.rD);
        v.hd(this.rD);
        this.cAz = (0 - (10000 + com.tencent.mm.compatible.g.j.qe()));
        return -1;
      }
      if (v.hc(this.rD))
        break;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "checkVoiceNetTimes Failed file:" + this.rD);
      v.hd(this.rD);
      this.cAz = (0 - (10000 + com.tencent.mm.compatible.g.j.qe()));
      return -1;
    }
    label1216: com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVideo", "doScene READ THUMB[" + this.rD + "] read ret:" + localu2.ret + " readlen:" + localu2.ccL + " newOff:" + localu2.cBg + " netOff:" + this.cAy.DJ());
    if (localu2.cBg < this.cAy.DJ())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "Err doScene READ THUMB[" + this.rD + "] newOff:" + localu2.cBg + " OldtOff:" + this.cAy.DJ());
      v.hd(this.rD);
      this.cAz = (0 - (10000 + com.tencent.mm.compatible.g.j.qe()));
      return -1;
    }
    byte[] arrayOfByte2 = new byte[localu2.ccL];
    System.arraycopy(localu2.buf, 0, arrayOfByte2, 0, localu2.ccL);
    localyg.fOd = this.cAy.DJ();
    localyg.fOe = new rv().bM(arrayOfByte2);
    while (true)
    {
      return a(paramr, this.cke, this);
      label1458: u localu1 = r.m(m.DE().gZ(this.rD), this.cAy.DH(), cAC);
      if ((localu1 == null) || (localu1.ret < 0) || (localu1.ccL == 0))
      {
        v.hd(this.rD);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "doScene READ VIDEO[" + this.rD + "]  Error ");
        this.cAz = (0 - (10000 + com.tencent.mm.compatible.g.j.qe()));
        return -1;
      }
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVideo", "doScene READ VIDEO[" + this.rD + "] read ret:" + localu1.ret + " readlen:" + localu1.ccL + " newOff:" + localu1.cBg + " netOff:" + this.cAy.DH());
      if (localu1.cBg < this.cAy.DH())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "Err doScene READ VIDEO[" + this.rD + "] newOff:" + localu1.cBg + " OldtOff:" + this.cAy.DH());
        v.hd(this.rD);
        this.cAz = (0 - (10000 + com.tencent.mm.compatible.g.j.qe()));
        return -1;
      }
      if ((!this.cAF) && (localu1.cBg >= 3072000))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "Err doScene READ VIDEO[" + this.rD + "] maxsize:3072000");
        v.hd(this.rD);
        this.cAz = (0 - (10000 + com.tencent.mm.compatible.g.j.qe()));
        return -1;
      }
      if ((this.cAF) && (localu1.cBg >= 20971520))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "Err doScene READ VIDEO[" + this.rD + "] maxsize:20971520");
        v.hd(this.rD);
        this.cAz = (0 - (10000 + com.tencent.mm.compatible.g.j.qe()));
        return -1;
      }
      byte[] arrayOfByte1 = new byte[localu1.ccL];
      System.arraycopy(localu1.buf, 0, arrayOfByte1, 0, localu1.ccL);
      localyg.fYH = this.cAy.DH();
      localyg.fOd = this.cAy.DJ();
      localyg.fYI = new rv().bM(arrayOfByte1);
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    yg localyg = (yg)((a)paramaj).wr();
    if ((cj.hX(localyg.fzT)) || (localyg.fOf <= 0) || (cj.hX(localyg.fzp)) || (cj.hX(localyg.fzq)) || (localyg.fFg <= 0) || (localyg.fOd > localyg.fOc) || (localyg.fOd < 0) || (localyg.fYH > localyg.fYG) || (localyg.fYH < 0) || ((localyg.fYH == localyg.fYG) && (localyg.fOd == localyg.fOc)) || (localyg.fOc <= 0) || (localyg.fYG <= 0) || ((localyg.fYI.ayg() <= 0) && (localyg.fOe.ayg() <= 0)))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "ERR: Security Check Failed file:" + this.rD + " user:" + localyg.fzq);
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVideo", "cdntra onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " useCdnTransClientId:" + this.ctR);
    if (this.cAA)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVideo", "onGYNetEnd Call Stop by Service   file:" + this.rD + " user:" + this.cAy.getUser());
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 == 3) && (paramInt3 == -1) && (!cj.hX(this.ctR)))
    {
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = this.ctR;
      com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneUploadVideo", "cdntra using cdn trans,  wait cdn service callback! clientid:%s", arrayOfObject5);
      return;
    }
    yh localyh = (yh)((a)paramaj).ws();
    yg localyg = (yg)((a)paramaj).wr();
    this.cAy = v.hh(this.rD);
    if (this.cAy == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "ERR: onGYNetEnd Get INFO FAILED :" + this.rD);
      this.cAz = (-10000 + (0 - com.tencent.mm.compatible.g.j.qe()));
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (this.cAy.getStatus() == 105)
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.NetSceneUploadVideo", "onGYNetEnd STATUS PAUSE [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((this.cAy.getStatus() != 104) && (this.cAy.getStatus() != 103))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "ERR: onGYNetEnd STATUS ERR: status:" + this.cAy.getStatus() + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 == 4) && (paramInt3 == -22))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "ERR: onGYNetEnd BLACK  errtype:" + paramInt2 + " errCode:" + paramInt3 + "  file:" + this.rD + " user:" + this.cAy.getUser());
      v.he(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 == 4) && (paramInt3 != 0) && (paramInt3 != -13) && (paramInt3 != -6))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "ERR: onGYNetEnd SERVER FAILED errtype:" + paramInt2 + " errCode:" + paramInt3 + "  file:" + this.rD + " user:" + this.cAy.getUser());
      v.hd(this.rD);
      com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject4 = new Object[7];
      arrayOfObject4[0] = Integer.valueOf(paramInt3);
      arrayOfObject4[1] = Integer.valueOf(1);
      arrayOfObject4[2] = Long.valueOf(this.startTime);
      arrayOfObject4[3] = Long.valueOf(cj.FD());
      arrayOfObject4[4] = Integer.valueOf(com.tencent.mm.modelcdntran.h.M(al.getContext()));
      arrayOfObject4[5] = Integer.valueOf(CdnTransportEngine.coP);
      arrayOfObject4[6] = Integer.valueOf(0);
      localm2.d(10420, arrayOfObject4);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "ERR: onGYNetEnd FAILED (WILL RETRY) errtype:" + paramInt2 + " errCode:" + paramInt3 + "  file:" + this.rD + " user:" + this.cAy.getUser());
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((!cj.A(localyg.fOe.ayh().getBytes())) && (localyg.fOd != localyh.fOd - localyg.fOe.ayg()))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "onGYNetEnd Err Thumb Pos:[" + localyg.fOd + "," + localyg.fOe.ayg() + "," + localyh.fOd + "] file:" + this.rD + " user:" + localyg.fzq);
      v.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((!cj.A(localyg.fYI.ayh().getBytes())) && (localyg.fYH != localyh.fYH - localyg.fYI.ayg()))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "onGYNetEnd Err Thumb Pos:[" + localyg.fYH + "," + localyg.fYI.ayg() + "," + localyh.fYH + "] file:" + this.rD + " user:" + localyg.fzq);
      v.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.cAy.H(cj.FC());
    this.cAy.dA(localyh.fzo);
    this.cAy.cL(1028);
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(this.cAy.AH());
    arrayOfObject1[1] = Integer.valueOf(at.cHK);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "dkmsgid  set svrmsgid %d -> %d", arrayOfObject1);
    if ((10007 == at.cHJ) && (at.cHK != 0) && (this.cAy.AH() != 0))
    {
      this.cAy.dA(at.cHK);
      at.cHK = 0;
    }
    int i = this.cAy.getStatus();
    int m;
    if (i == 103)
    {
      this.cAy.ex(localyg.fOd + localyg.fOe.ayg());
      this.cAy.cL(0x40 | this.cAy.vU());
      int n = this.cAy.DJ();
      int i1 = this.cAy.DK();
      m = 0;
      if (n >= i1)
      {
        this.cAy.setStatus(104);
        this.cAy.cL(0x100 | this.cAy.vU());
      }
    }
    while (true)
    {
      v.d(this.cAy);
      if (!this.cAA)
        break label1583;
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
      if (i != 104)
        break;
      this.cAy.ev(localyg.fYH + localyg.fYI.ayg());
      this.cAy.cL(0x8 | this.cAy.vU());
      int j = this.cAy.DH();
      int k = this.cAy.vR();
      m = 0;
      if (j >= k)
      {
        this.cAy.setStatus(199);
        this.cAy.cL(0x100 | this.cAy.vU());
        v.c(this.cAy);
        m = 1;
      }
    }
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "onGYNetEnd ERROR STATUS:" + i + " file:" + this.rD + " user:" + localyg.fzq);
    v.hd(this.rD);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
    return;
    label1583: if (m == 0)
    {
      this.ckr.bO(10L);
      return;
    }
    com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
    Object[] arrayOfObject2 = new Object[7];
    arrayOfObject2[0] = Integer.valueOf(0);
    arrayOfObject2[1] = Integer.valueOf(1);
    arrayOfObject2[2] = Long.valueOf(this.startTime);
    arrayOfObject2[3] = Long.valueOf(cj.FD());
    arrayOfObject2[4] = Integer.valueOf(com.tencent.mm.modelcdntran.h.M(al.getContext()));
    arrayOfObject2[5] = Integer.valueOf(CdnTransportEngine.coP);
    arrayOfObject2[6] = Integer.valueOf(this.cAy.vR() - this.cAG);
    localm1.d(10420, arrayOfObject2);
    boolean bool;
    if (this.cAy == null)
    {
      bool = false;
      if ((!bool) && (!w.cH(this.cAy.getUser())))
        break label2073;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.cAy.getUser();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVideo", "upload to biz :%s", arrayOfObject3);
      if (this.cAy.AH() < 0)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "ERR: finish video invaild MSGSVRID :" + this.cAy.AH() + " file:" + this.rD + " toUser:" + this.cAy.getUser());
        v.hd(this.rD);
      }
      label1831: if (this.cuZ == null)
        break label2159;
    }
    label2073: label2159: for (long l = this.cuZ.qh(); ; l = 0L)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVideo", "!!!FIN: file:" + this.rD + " toUser:" + this.cAy.getUser() + " msgsvrid:" + this.cAy.AH() + " thumbsize:" + this.cAy.DK() + " videosize:" + this.cAy.vR() + " useTime:" + l);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVideo", "FinishLogForTime file:" + this.rD + " packSize:" + cAC + " filesize:" + this.cAy.vR() + " useTime:" + l);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
      i locali = be.uz().su().tO(this.cAy.getUser());
      if ((locali == null) || (locali.rj() <= 0))
      {
        bool = false;
        break;
      }
      bool = locali.aAp();
      break;
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneUploadVideo", "not upload to biz");
      if (this.cAy.AH() > 0)
        break label1831;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideo", "ERR: finish video invaild MSGSVRID :" + this.cAy.AH() + " file:" + this.rD + " toUser:" + this.cAy.getUser());
      v.hd(this.rD);
      break label1831;
    }
  }

  protected final void a(z paramz)
  {
    v.hd(this.rD);
  }

  public final String getFileName()
  {
    return this.rD;
  }

  public final int getType()
  {
    return 149;
  }

  public final void stop()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.ctR;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVideo", "stop %s", arrayOfObject);
    if (!cj.hX(this.ctR))
      com.tencent.mm.modelcdntran.j.yy().eT(this.ctR);
    this.cAA = true;
  }

  protected final int we()
  {
    return this.cAD;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.g
 * JD-Core Version:    0.6.2
 */