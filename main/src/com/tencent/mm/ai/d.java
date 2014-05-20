package com.tencent.mm.ai;

import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.n;
import com.tencent.mm.n.a;
import com.tencent.mm.n.x;
import com.tencent.mm.n.z;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.bm;
import com.tencent.mm.protocal.a.el;
import com.tencent.mm.protocal.a.em;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;
import junit.framework.Assert;

public final class d extends x
  implements ab
{
  private boolean cAA = false;
  private q cAy = null;
  private int cAz = 0;
  private com.tencent.mm.n.m cjh;
  private int ckU = 0;
  private a cke;
  private ay ckr = new ay(new f(this), false);
  private String ctR = "";
  private n ctV = new e(this);
  private String rD;
  private int startOffset = 0;
  private long startTime = 0L;

  public d(String paramString)
  {
    boolean bool = false;
    if (paramString != null)
      bool = true;
    Assert.assertTrue(bool);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadVideo", "NetSceneDownloadVideo:  file:" + paramString);
    this.rD = paramString;
  }

  public final int DC()
  {
    return this.cAz;
  }

  public final int a(com.tencent.mm.network.r paramr, com.tencent.mm.n.m paramm)
  {
    this.cjh = paramm;
    this.cAy = v.hh(this.rD);
    if (this.cAy == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: Get INFO FAILED :" + this.rD);
      this.cAz = (-10000 + (0 - com.tencent.mm.compatible.g.j.qe()));
      return -1;
    }
    if (this.startTime == 0L)
    {
      this.startTime = cj.FD();
      this.startOffset = this.cAy.DI();
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadVideo", "parseVideoMsgXML content:" + this.cAy.DT());
    Map localMap = u.aL(this.cAy.DT(), "msg");
    int i;
    if (localMap == null)
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.NetSceneDownloadVideo", "cdntra parse video recv xml failed");
      i = 0;
    }
    while (i != 0)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.rD;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "cdntra use cdn return -1 for onGYNetEnd clientid:%s", arrayOfObject1);
      return 0;
      String str1 = (String)localMap.get(".msg.videomsg.$cdnvideourl");
      if (cj.hX(str1))
      {
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.NetSceneDownloadVideo", "cdntra parse video recv xml failed");
        i = 0;
      }
      else
      {
        String str2 = (String)localMap.get(".msg.videomsg.$aeskey");
        this.ckU = Integer.valueOf((String)localMap.get(".msg.videomsg.$length")).intValue();
        this.ctR = h.a("downvideo", this.cAy.DL(), this.cAy.getUser(), this.cAy.getFileName());
        if (cj.hX(this.ctR))
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = this.cAy.getFileName();
          com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneDownloadVideo", "cdntra genClientId failed not use cdn file:%s", arrayOfObject2);
          i = 0;
        }
        else
        {
          String str3 = m.DE().gZ(this.rD) + ".tmp";
          com.tencent.mm.modelcdntran.m localm = new com.tencent.mm.modelcdntran.m();
          localm.field_mediaId = this.ctR;
          localm.field_fullpath = str3;
          localm.field_fileType = CdnTransportEngine.coP;
          localm.field_totalLen = this.ckU;
          localm.field_aesKey = str2;
          localm.field_fileId = str1;
          localm.field_priority = CdnTransportEngine.coK;
          localm.cpJ = this.ctV;
          if (!com.tencent.mm.modelcdntran.j.yy().a(localm))
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "cdntra addSendTask failed.");
            this.ctR = "";
            i = 0;
          }
          else
          {
            if (this.cAy.DS() != 1)
            {
              this.cAy.DR();
              this.cAy.cL(524288);
              v.d(this.cAy);
            }
            i = 1;
          }
        }
      }
    }
    if (this.cAy.getStatus() != 112)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: STATUS: " + this.cAy.getStatus() + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "]");
      this.cAz = (-10000 + (0 - com.tencent.mm.compatible.g.j.qe()));
      return -1;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadVideo", "start doScene  [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "]  filesize:" + this.cAy.DI() + " file:" + this.cAy.vR() + " netTimes:" + this.cAy.DP());
    if (!v.hc(this.rD))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: NET TIMES: " + this.cAy.DP() + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      v.hd(this.rD);
      this.cAz = (-10000 + (0 - com.tencent.mm.compatible.g.j.qe()));
      return -1;
    }
    if (this.cAy.AH() <= 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: MSGSVRID: " + this.cAy.AH() + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      v.hd(this.rD);
      this.cAz = (-10000 + (0 - com.tencent.mm.compatible.g.j.qe()));
      return -1;
    }
    if ((this.cAy.DI() < 0) || (this.cAy.vR() <= this.cAy.DI()) || (this.cAy.vR() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: fileSize:" + this.cAy.DI() + " total:" + this.cAy.vR() + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      v.hd(this.rD);
      this.cAz = (-10000 + (0 - com.tencent.mm.compatible.g.j.qe()));
      return -1;
    }
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new el());
    localb.b(new em());
    localb.es("/cgi-bin/micromsg-bin/downloadvideo");
    localb.cN(150);
    localb.cO(40);
    localb.cP(1000000040);
    this.cke = localb.wx();
    el localel = (el)this.cke.wr();
    localel.fzo = this.cAy.AH();
    localel.fEd = this.cAy.DI();
    localel.fAL = this.cAy.vR();
    if (bm.ac(al.getContext()));
    for (int j = 1; ; j = 2)
    {
      localel.fFg = j;
      return a(paramr, this.cke, this);
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    el localel = (el)((a)paramaj).wr();
    if ((localel.fzo <= 0) || (localel.fEd < 0) || (localel.fAL <= 0) || (localel.fAL <= localel.fEd))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: SECURITY CHECK FAILED [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      v.hd(this.rD);
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if (this.cAA)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadVideo", "onGYNetEnd Call Stop by Service  [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 == 3) && (paramInt3 == -1) && (!cj.hX(this.ctR)))
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.ctR;
      com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneDownloadVideo", "cdntra using cdn trans,  wait cdn service callback! clientid:%s", arrayOfObject3);
      return;
    }
    em localem = (em)((a)paramaj).ws();
    el localel = (el)((a)paramaj).wr();
    this.cAy = v.hh(this.rD);
    if (this.cAy == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: onGYNetEnd Get INFO FAILED :" + this.rD);
      this.cAz = (-10000 + (0 - com.tencent.mm.compatible.g.j.qe()));
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (this.cAy.getStatus() == 113)
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.NetSceneDownloadVideo", "onGYNetEnd STATUS PAUSE [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (this.cAy.getStatus() != 112)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: onGYNetEnd STATUS ERR: status:" + this.cAy.getStatus() + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 == 4) && (paramInt3 != 0) && (paramInt3 != -13) && (paramInt3 != -6))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: onGYNetEnd SERVER FAILED errtype:" + paramInt2 + " errCode:" + paramInt3 + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      v.hd(this.rD);
      com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject2 = new Object[7];
      arrayOfObject2[0] = Integer.valueOf(paramInt3);
      arrayOfObject2[1] = Integer.valueOf(2);
      arrayOfObject2[2] = Long.valueOf(this.startTime);
      arrayOfObject2[3] = Long.valueOf(cj.FD());
      arrayOfObject2[4] = Integer.valueOf(h.M(al.getContext()));
      arrayOfObject2[5] = Integer.valueOf(CdnTransportEngine.coP);
      arrayOfObject2[6] = Integer.valueOf(this.ckU - this.startOffset);
      localm2.d(10420, arrayOfObject2);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: onGYNetEnd SERVER FAILED (SET PAUSE) errtype:" + paramInt2 + " errCode:" + paramInt3 + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      this.cAy.setStatus(113);
      v.d(this.cAy);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (cj.A(localem.fAJ.ayh().getBytes()))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: onGYNetEnd Recv BUF ZERO length  [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      v.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (localem.fEd != localel.fEd)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: onGYNetEnd OFFSET ERROR respStartPos:" + localem.fEd + " reqStartPos:" + localel.fEd + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      v.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (localem.fAL != localel.fAL)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: onGYNetEnd respTotal:" + localem.fAL + " reqTotal:" + localel.fAL + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      v.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (localel.fAL < localem.fEd)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: onGYNetEnd respTotal:" + localem.fAL + " respStartPos:" + localel.fEd + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      v.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (localem.fzo != localel.fzo)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: onGYNetEnd respMsgId:" + localem.fzo + " reqMsgId:" + localel.fzo + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      v.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadVideo", "onGYNetEnd respBuf:" + localem.fAJ.ayg() + " reqStartPos:" + localel.fEd + " totallen:" + localel.fAL + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
    int i = r.a(m.DE().gZ(this.rD), localel.fEd, localem.fAJ.ayh().toByteArray());
    if (i < 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: onGYNetEnd WRITEFILE RET:" + i + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      v.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (i > this.cAy.vR())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: onGYNetEnd WRITEFILE newOffset:" + i + " totalLen:" + this.cAy.vR() + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      v.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    int j = v.w(this.rD, i);
    if (j < 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadVideo", "ERR: onGYNetEnd updateAfterRecv Ret:" + j + " newOffset :" + i + " [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "] ");
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (j == 1)
    {
      com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject1 = new Object[7];
      arrayOfObject1[0] = Integer.valueOf(0);
      arrayOfObject1[1] = Integer.valueOf(2);
      arrayOfObject1[2] = Long.valueOf(this.startTime);
      arrayOfObject1[3] = Long.valueOf(cj.FD());
      arrayOfObject1[4] = Integer.valueOf(h.M(al.getContext()));
      arrayOfObject1[5] = Integer.valueOf(CdnTransportEngine.coP);
      arrayOfObject1[6] = Integer.valueOf(this.ckU - this.startOffset);
      localm1.d(10420, arrayOfObject1);
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneDownloadVideo", "!!!FIN [" + this.rD + "," + this.cAy.AH() + "," + this.cAy.DG() + "," + this.cAy.getUser() + "]");
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if (this.cAA)
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.ckr.bO(0L);
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
    return 150;
  }

  public final void stop()
  {
    com.tencent.mm.modelcdntran.j.yy().eU(this.rD);
    this.cAA = true;
  }

  protected final int we()
  {
    return 2500;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.d
 * JD-Core Version:    0.6.2
 */