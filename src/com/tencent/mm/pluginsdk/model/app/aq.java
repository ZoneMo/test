package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.a.c;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.n;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.xo;
import com.tencent.mm.protocal.a.xp;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;

public final class aq extends x
  implements ab
{
  private int cAz = 0;
  private String cgF = null;
  private com.tencent.mm.n.m cjh;
  private com.tencent.mm.n.a cke;
  private String ctR = "";
  private n ctV = new ar(this);
  private boolean fhO = true;
  private long fhP = -1L;
  private a fhv = null;
  private long fhw = -1L;
  private long startTime = 0L;

  private aq(long paramLong)
  {
    this.fhw = paramLong;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new xo());
    localb.b(new xp());
    localb.es("/cgi-bin/micromsg-bin/uploadappattach");
    localb.cN(220);
    localb.cO(105);
    localb.cP(1000000105);
    this.cke = localb.wx();
  }

  public aq(long paramLong, String paramString)
  {
    this(paramLong);
    this.cgF = paramString;
  }

  public final int DC()
  {
    return this.cAz;
  }

  public final int a(r paramr, com.tencent.mm.n.m paramm)
  {
    this.cjh = paramm;
    this.fhv = new a();
    if ((!ba.HF().b(this.fhw, this.fhv)) || (this.fhv == null))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", com.tencent.mm.compatible.g.j.qg() + " get info failed rowid:" + this.fhw);
      this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
      this.fhv = null;
      return -1;
    }
    if (this.fhv.field_status != 101L)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", com.tencent.mm.compatible.g.j.qg() + " get field_status failed rowid:" + this.fhw + " status:" + this.fhv.field_status);
      return -1;
    }
    if (this.startTime == 0L)
    {
      this.startTime = cj.FD();
      this.fhP = this.fhv.field_offset;
    }
    int i;
    if ((this.fhv.field_type == 8L) || (this.fhv.field_type == 9L))
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(this.fhv.field_type);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "cdntra cdn not support Emoji or voiceremind now type:%d", arrayOfObject1);
      i = 0;
    }
    while (i != 0)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(this.fhw);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "cdntra use cdn return -1 for onGYNetEnd clientid:%d", arrayOfObject2);
      return 0;
      com.tencent.mm.modelcdntran.j.yy();
      if ((!com.tencent.mm.modelcdntran.b.ys()) && (this.fhv.field_isUseCdn != 1))
      {
        Object[] arrayOfObject7 = new Object[2];
        com.tencent.mm.modelcdntran.j.yy();
        arrayOfObject7[0] = Boolean.valueOf(com.tencent.mm.modelcdntran.b.ys());
        arrayOfObject7[1] = Integer.valueOf(this.fhv.field_isUseCdn);
        com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneUploadAppAttach", "cdntra not use cdn flag:%b getCdnInfo:%d", arrayOfObject7);
        i = 0;
      }
      else
      {
        ak localak = be.uz().sw().bU(this.fhv.field_msgInfoId);
        if ((localak == null) || (localak.Bo() != this.fhv.field_msgInfoId))
        {
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = Long.valueOf(this.fhv.field_msgInfoId);
          com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneUploadAppAttach", "cdntra read msg info failed msgId:%d", arrayOfObject3);
          i = 0;
        }
        else
        {
          String str1 = "";
          if (!cj.hX(localak.ot()))
            str1 = ag.Ba().fW(localak.ot());
          int j = c.ar(str1);
          int k = c.ar(this.fhv.field_fileFullPath);
          if (j >= CdnTransportEngine.coX)
          {
            Object[] arrayOfObject6 = new Object[2];
            arrayOfObject6[0] = str1;
            arrayOfObject6[1] = Integer.valueOf(j);
            com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneUploadAppAttach", "cdntra thumb[%s][%d] Too Big Not Use CDN TRANS", arrayOfObject6);
            i = 0;
          }
          else
          {
            this.ctR = h.a("upattach", this.fhv.field_createTime, localak.aCl(), this.fhw);
            if (cj.hX(this.ctR))
            {
              Object[] arrayOfObject5 = new Object[1];
              arrayOfObject5[0] = Long.valueOf(this.fhw);
              com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneUploadAppAttach", "cdntra genClientId failed not use cdn rowid:%d", arrayOfObject5);
              i = 0;
            }
            else
            {
              Object[] arrayOfObject4 = new Object[5];
              arrayOfObject4[0] = Long.valueOf(this.fhv.field_msgInfoId);
              arrayOfObject4[1] = this.fhv.field_fileFullPath;
              arrayOfObject4[2] = Integer.valueOf(k);
              arrayOfObject4[3] = str1;
              arrayOfObject4[4] = Integer.valueOf(j);
              com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "cdntra checkUseCdn id:%d file[%s][%d] thumb[%s][%d]", arrayOfObject4);
              com.tencent.mm.modelcdntran.m localm = new com.tencent.mm.modelcdntran.m();
              localm.cpJ = this.ctV;
              localm.field_mediaId = this.ctR;
              localm.field_fullpath = this.fhv.field_fileFullPath;
              localm.field_thumbpath = str1;
              localm.field_fileType = CdnTransportEngine.coQ;
              localm.field_talker = localak.aCl();
              localm.field_priority = CdnTransportEngine.coK;
              localm.field_needStorage = false;
              localm.field_isStreamMedia = false;
              localm.cpJ = this.ctV;
              String str2 = localak.getContent();
              if (w.cp(localak.aCl()))
              {
                int m = bv.dw(localak.getContent());
                if (m != -1)
                  str2 = (localak.getContent() + " ").substring(m + 2).trim();
              }
              com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(cj.sT(str2));
              if (localb != null)
              {
                localm.field_fileId = localb.cgK;
                localm.field_aesKey = localb.cgN;
              }
              while (true)
              {
                if (com.tencent.mm.modelcdntran.j.yy().b(localm))
                  break label895;
                com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "cdntra addSendTask failed.");
                this.ctR = "";
                i = 0;
                break;
                com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneUploadAppAttach", "cdntra parse content xml failed");
              }
              label895: if (this.fhv.field_isUseCdn != 1)
              {
                this.fhv.field_isUseCdn = 1;
                boolean bool = ba.HF().a(this.fhv, new String[0]);
                if (!bool)
                {
                  com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "checkUseCdn update info ret:" + bool);
                  this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
                  this.cjh.a(3, -1, "", this);
                  i = 0;
                }
              }
              else
              {
                i = 1;
              }
            }
          }
        }
      }
    }
    if (this.fhv.field_netTimes > 1350L)
    {
      s.bu(this.fhv.gfy);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", com.tencent.mm.compatible.g.j.qg() + " info.field_netTimes > DOSCENE_LIMIT SET ERROR! rowid:" + this.fhw);
      return -1;
    }
    a locala = this.fhv;
    locala.field_netTimes = (1L + locala.field_netTimes);
    if (cj.hX(this.fhv.field_appId))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "checkArgs : appId is null");
      if (this.fhv.field_type != 8L)
      {
        this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
        return -1;
      }
    }
    if (cj.hX(this.fhv.field_clientAppDataId))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "checkArgs : clientAppDataId is null");
      this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
      return -1;
    }
    if ((this.fhv.field_totalLen <= 0L) || (this.fhv.field_totalLen > 11059200L))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "checkArgs : totalLen is invalid, totalLen = " + this.fhv.field_totalLen);
      this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
      return -1;
    }
    if (cj.hX(this.fhv.field_fileFullPath))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "checkArgs : fileFullPath is null");
      this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
      return -1;
    }
    if (c.ar(this.fhv.field_fileFullPath) > 10485760)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "doScene : file is too large");
      return -1;
    }
    byte[] arrayOfByte = c.h(this.fhv.field_fileFullPath, (int)this.fhv.field_offset, 8192);
    if (cj.A(arrayOfByte))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "doScene : data is null");
      this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
      return -1;
    }
    xo localxo = (xo)this.cke.wr();
    localxo.fyE = this.fhv.field_appId;
    localxo.fzS = ((int)this.fhv.field_sdkVer);
    localxo.fYh = this.fhv.field_clientAppDataId;
    localxo.dGR = ((int)this.fhv.field_type);
    localxo.eBo = v.th();
    localxo.fAL = ((int)this.fhv.field_totalLen);
    localxo.fEd = ((int)this.fhv.field_offset);
    if ((this.cgF != null) && (this.fhO))
    {
      localxo.fFn = this.cgF;
      localxo.fAL = ((int)this.fhv.field_totalLen);
      localxo.fAU = 0;
      localxo.fAJ = new rv().bM(new byte[0]);
      this.fhO = false;
      return a(paramr, this.cke, this);
    }
    localxo.fAU = arrayOfByte.length;
    localxo.fAJ = new rv().bM(arrayOfByte);
    if (this.cgF != null)
      localxo.fFn = this.cgF;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadAppAttach", "onGYNetEnd : errType = " + paramInt2 + ", errCode = " + paramInt3);
    if ((paramInt2 == 3) && (paramInt3 == -1) && (!cj.hX(this.ctR)))
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.ctR;
      com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneUploadAppAttach", "cdntra using cdn trans,  wait cdn service callback! clientid:%s", arrayOfObject3);
    }
    label670: 
    do
    {
      return;
      if ((paramInt2 != 0) || (paramInt3 != 0))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "onGYNetEnd : errType = " + paramInt2 + ", errCode = " + paramInt3);
        this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
        if (paramInt2 == 4)
        {
          com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
          Object[] arrayOfObject1 = new Object[7];
          arrayOfObject1[0] = Integer.valueOf(paramInt3);
          arrayOfObject1[1] = Integer.valueOf(1);
          arrayOfObject1[2] = Long.valueOf(this.startTime);
          arrayOfObject1[3] = Long.valueOf(cj.FD());
          arrayOfObject1[4] = Integer.valueOf(h.M(al.getContext()));
          arrayOfObject1[5] = Integer.valueOf(CdnTransportEngine.coQ);
          arrayOfObject1[6] = Long.valueOf(this.fhv.field_totalLen - this.fhP);
          localm1.d(10420, arrayOfObject1);
        }
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
      xp localxp = (xp)((com.tencent.mm.n.a)paramaj).ws();
      if ((localxp.fyE != null) && (this.cgF == null) && ((!localxp.fyE.equals(this.fhv.field_appId)) || (!localxp.fYh.equals(this.fhv.field_clientAppDataId))))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "argument is not consistent");
        this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
        this.cjh.a(3, -1, "", this);
        return;
      }
      if ((localxp.fAL < 0) || (localxp.fAL != this.fhv.field_totalLen) || (localxp.fEd < 0) || (localxp.fEd > this.fhv.field_totalLen))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "dataLen, startPos or totalLen is incorrect");
        this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
        this.cjh.a(3, -1, "", this);
        return;
      }
      this.fhv.field_offset = localxp.fEd;
      a locala = this.fhv;
      if (s.qq(localxp.fAS));
      for (String str = localxp.fAS; ; str = "")
      {
        locala.field_mediaSvrId = str;
        if (this.fhv.field_offset != this.fhv.field_totalLen)
          break label670;
        if (!cj.hX(this.fhv.field_mediaSvrId))
          break;
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "finish upload but mediaid == null!");
        this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
        this.cjh.a(3, -1, "", this);
        s.bu(this.fhv.gfy);
        return;
      }
      this.fhv.field_status = 199L;
      com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject2 = new Object[7];
      arrayOfObject2[0] = Integer.valueOf(0);
      arrayOfObject2[1] = Integer.valueOf(1);
      arrayOfObject2[2] = Long.valueOf(this.startTime);
      arrayOfObject2[3] = Long.valueOf(cj.FD());
      arrayOfObject2[4] = Integer.valueOf(h.M(al.getContext()));
      arrayOfObject2[5] = Integer.valueOf(CdnTransportEngine.coQ);
      arrayOfObject2[6] = Long.valueOf(this.fhv.field_totalLen - this.fhP);
      localm2.d(10420, arrayOfObject2);
      boolean bool = ba.HF().a(this.fhv, new String[0]);
      if (!bool)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "onGYNetEnd update info ret:" + bool);
        this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
        this.cjh.a(3, -1, "", this);
        return;
      }
      if (this.fhv.field_status == 199L)
      {
        this.cjh.a(0, 0, "", this);
        return;
      }
    }
    while (a(wM(), this.cjh) >= 0);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadAppAttach", "onGYNetEnd : doScene fail");
    this.cjh.a(3, -1, "", this);
  }

  public final long apX()
  {
    return this.fhw;
  }

  public final boolean aqe()
  {
    return !cj.hX(this.ctR);
  }

  public final int getType()
  {
    return 220;
  }

  public final String oJ()
  {
    if (this.fhv == null)
      return null;
    return this.fhv.field_mediaSvrId;
  }

  protected final int we()
  {
    return 1350;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.aq
 * JD-Core Version:    0.6.2
 */