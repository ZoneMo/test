package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.a.c;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.n.x;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.eh;
import com.tencent.mm.protocal.a.ei;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;

public final class ab extends x
  implements com.tencent.mm.network.ab
{
  private long bMS = 0L;
  private int cAz = 0;
  private ak cad = null;
  private com.tencent.mm.n.m cjh;
  private com.tencent.mm.n.a cke;
  private com.tencent.mm.n.n ctM;
  private String ctR = "";
  private com.tencent.mm.modelcdntran.n ctV = new ac(this);
  private boolean fhA = false;
  private a fhv = null;
  private long fhw = -1L;
  private int fhx = -1;
  private String fhy = "";
  private boolean fhz = false;
  private String mediaId = "";
  private long startTime = 0L;
  private int type = 0;

  public ab(long paramLong, String paramString, com.tencent.mm.n.n paramn)
  {
    this(paramString, paramn, 0);
    this.bMS = paramLong;
  }

  public ab(a parama)
  {
    this.fhv = parama;
    this.fhz = true;
    this.mediaId = this.fhv.field_mediaId;
    this.ctM = null;
    this.type = 0;
    if (parama == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "<init>, info is null, mediaId = " + this.mediaId);
      return;
    }
    int i = c.ar(parama.field_fileFullPath);
    if (i != parama.field_offset)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "<init> : fileFullPath is invalid, fileLength = " + i + ", info.field_offset = " + parama.field_offset);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "<init> : reset file and appattachinfo");
      c.deleteFile(parama.field_fileFullPath);
      parama.field_offset = 0L;
      parama.field_status = 101L;
    }
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new eh());
    localb.b(new ei());
    localb.es("/cgi-bin/micromsg-bin/downloadappattach");
    localb.cN(221);
    localb.cO(106);
    localb.cP(1000000106);
    this.cke = localb.wx();
  }

  public ab(String paramString)
  {
    this(paramString, null, 0);
  }

  public ab(String paramString, com.tencent.mm.n.n paramn, int paramInt)
  {
    this.mediaId = paramString;
    this.ctM = paramn;
    this.type = paramInt;
    this.fhv = ba.HF().qk(paramString);
    if (this.fhv == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "<init>, info is null, mediaId = " + paramString);
      return;
    }
    int i = c.ar(this.fhv.field_fileFullPath);
    if (i != this.fhv.field_offset)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "<init> : fileFullPath is invalid, fileLength = " + i + ", info.field_offset = " + this.fhv.field_offset);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "<init> : reset file and appattachinfo");
      c.deleteFile(this.fhv.field_fileFullPath);
      this.fhv.field_offset = 0L;
      this.fhv.field_status = 101L;
      ba.HF().a(this.fhv, new String[0]);
    }
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new eh());
    localb.b(new ei());
    localb.es("/cgi-bin/micromsg-bin/downloadappattach");
    localb.cN(221);
    localb.cO(106);
    localb.cP(1000000106);
    this.cke = localb.wx();
  }

  public final int DC()
  {
    return this.cAz;
  }

  public final int a(r paramr, com.tencent.mm.n.m paramm)
  {
    this.cjh = paramm;
    if (this.fhv == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", com.tencent.mm.compatible.g.j.qg() + " get info failed mediaId:" + this.mediaId);
      this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
      return -1;
    }
    this.cad = be.uz().sw().bU(this.bMS);
    if ((this.cad == null) || (this.cad.Bo() != this.bMS))
    {
      String str1 = com.tencent.mm.compatible.g.j.qg() + " get msginfo failed mediaId:%s  msgId:%d";
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = this.mediaId;
      arrayOfObject1[1] = Long.valueOf(this.bMS);
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.NetSceneDownloadAppAttach", str1, arrayOfObject1);
      this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
      return -1;
    }
    if (this.startTime == 0L)
    {
      this.startTime = cj.FD();
      this.fhx = ((int)this.fhv.field_offset);
    }
    String str2 = this.cad.getContent();
    if (w.cp(this.cad.aCl()))
    {
      int k = bv.dw(this.cad.getContent());
      if (k != -1)
        str2 = (this.cad.getContent() + " ").substring(k + 2).trim();
    }
    com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(cj.sT(str2));
    int i;
    if (localb == null)
    {
      Object[] arrayOfObject7 = new Object[1];
      arrayOfObject7[0] = this.mediaId;
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.NetSceneDownloadAppAttach", "cdntra parse content xml failed: mediaId:%s", arrayOfObject7);
      i = 0;
    }
    while (i != 0)
    {
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = this.mediaId;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "cdntra use cdn return -1 for onGYNetEnd mediaid:%s", arrayOfObject5);
      return 0;
      Object[] arrayOfObject2 = new Object[5];
      arrayOfObject2[0] = Long.valueOf(this.bMS);
      arrayOfObject2[1] = Long.valueOf(this.fhv.field_totalLen);
      arrayOfObject2[2] = this.fhv.field_fileFullPath;
      arrayOfObject2[3] = localb.cgK;
      arrayOfObject2[4] = localb.cgN;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "cdntra checkUseCdn msgid:%d total:%d fullpath:%s fileid:%s aes:%s ", arrayOfObject2);
      if ((cj.hX(localb.cgK)) || (cj.hX(localb.cgN)))
      {
        Object[] arrayOfObject3 = new Object[3];
        arrayOfObject3[0] = Long.valueOf(this.bMS);
        arrayOfObject3[1] = localb.cgK;
        arrayOfObject3[2] = localb.cgN;
        com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneDownloadAppAttach", "cdntra checkUseCdn msgId:%d Not use CDN  fileid:%s aes:%s ", arrayOfObject3);
        i = 0;
      }
      else
      {
        this.ctR = h.a("downattach", this.fhv.field_createTime, this.cad.aCl(), this.fhw);
        if (cj.hX(this.ctR))
        {
          Object[] arrayOfObject6 = new Object[1];
          arrayOfObject6[0] = Long.valueOf(this.fhw);
          com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneDownloadAppAttach", "cdntra genClientId failed not use cdn rowid:%d", arrayOfObject6);
          i = 0;
        }
        else
        {
          this.fhy = (this.fhv.field_fileFullPath + "_tmp");
          com.tencent.mm.modelcdntran.m localm = new com.tencent.mm.modelcdntran.m();
          localm.field_mediaId = this.ctR;
          localm.field_fullpath = this.fhy;
          localm.field_fileType = CdnTransportEngine.coQ;
          localm.field_totalLen = ((int)this.fhv.field_totalLen);
          localm.field_aesKey = localb.cgN;
          localm.field_fileId = localb.cgK;
          localm.field_priority = CdnTransportEngine.coK;
          localm.cpJ = this.ctV;
          if (!com.tencent.mm.modelcdntran.j.yy().a(localm))
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "cdntra addSendTask failed.");
            this.ctR = "";
            i = 0;
          }
          else if (this.fhv.field_isUseCdn != 1)
          {
            this.fhv.field_isUseCdn = 1;
            boolean bool = ba.HF().a(this.fhv, new String[0]);
            if (!bool)
            {
              com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "checkUseCdn update info ret:" + bool);
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
    if (this.fhv.field_status == 102L)
    {
      this.fhv.field_status = 101L;
      if (!this.fhz)
        ba.HF().a(this.fhv, new String[0]);
    }
    this.fhw = this.fhv.gfy;
    if (cj.hX(this.fhv.field_mediaSvrId))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "checkArgs : mediaId is null");
      this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
      return -1;
    }
    if ((this.fhv.field_totalLen <= 0L) || (this.fhv.field_totalLen > 11796480L))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "checkArgs : totalLen is invalid, totalLen = " + this.fhv.field_totalLen);
      this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
      return -1;
    }
    if (cj.hX(this.fhv.field_fileFullPath))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "checkArgs : fileFullPath is null");
      this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
      return -1;
    }
    int j = c.ar(this.fhv.field_fileFullPath);
    if (this.fhA)
    {
      j -= 6;
      if (j <= 0)
        break label1101;
    }
    while (j != this.fhv.field_offset)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "checkArgs : fileFullPath is invalid, fileLength = " + j + ", info.field_offset = " + this.fhv.field_offset);
      this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
      return -1;
      label1101: j = 0;
    }
    Object[] arrayOfObject4 = new Object[3];
    arrayOfObject4[0] = this.fhv.field_appId;
    arrayOfObject4[1] = this.fhv.field_mediaSvrId;
    arrayOfObject4[2] = Long.valueOf(this.fhv.field_sdkVer);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadAppAttach", "downing attach by non cdn, appId: %s,  mediaId: %s, sdkVer: %d", arrayOfObject4);
    eh localeh = (eh)this.cke.wr();
    localeh.fyE = this.fhv.field_appId;
    localeh.fAS = this.fhv.field_mediaSvrId;
    localeh.fzS = ((int)this.fhv.field_sdkVer);
    localeh.eBo = v.th();
    localeh.fAL = ((int)this.fhv.field_totalLen);
    localeh.fEd = ((int)this.fhv.field_offset);
    localeh.fAU = 0;
    if (this.type != 0);
    for (localeh.dGR = this.type; ; localeh.dGR = ((int)this.fhv.field_type))
      return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadAppAttach", "onGYNetEnd : errType = " + paramInt2 + ", errCode = " + paramInt3);
    if ((paramInt2 == 3) && (paramInt3 == -1) && (!cj.hX(this.ctR)))
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.ctR;
      com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneDownloadAppAttach", "cdntra using cdn trans,  wait cdn service callback! clientid:%s", arrayOfObject3);
    }
    do
    {
      return;
      if ((paramInt2 != 0) || (paramInt3 != 0))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "onGYNetEnd : errType = " + paramInt2 + ", errCode = " + paramInt3);
        this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
        if (paramInt2 == 4)
        {
          com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
          Object[] arrayOfObject1 = new Object[7];
          arrayOfObject1[0] = Integer.valueOf(paramInt3);
          arrayOfObject1[1] = Integer.valueOf(2);
          arrayOfObject1[2] = Long.valueOf(this.startTime);
          arrayOfObject1[3] = Long.valueOf(cj.FD());
          arrayOfObject1[4] = Integer.valueOf(h.M(al.getContext()));
          arrayOfObject1[5] = Integer.valueOf(CdnTransportEngine.coQ);
          arrayOfObject1[6] = Integer.valueOf(0);
          localm1.d(10420, arrayOfObject1);
        }
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
      ei localei = (ei)((com.tencent.mm.n.a)paramaj).ws();
      this.fhv.field_totalLen = localei.fAL;
      if (!localei.fAS.equals(this.fhv.field_mediaSvrId))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "argument is not consistent");
        this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
        this.cjh.a(3, -1, "", this);
        return;
      }
      if (localei.fEd != this.fhv.field_offset)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "startPos, totalLen is incorrect startpos:" + localei.fEd);
        this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
        this.cjh.a(3, -1, "", this);
        return;
      }
      if (localei.fAU + this.fhv.field_offset > this.fhv.field_totalLen)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "data buffer is incorrect datalen:" + localei.fAU + " off:" + this.fhv.field_offset + " total?:" + this.fhv.field_totalLen);
        this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
        this.cjh.a(3, -1, "", this);
        return;
      }
      byte[] arrayOfByte = com.tencent.mm.platformtools.an.a(localei.fAJ);
      if ((arrayOfByte == null) || (arrayOfByte.length == 0) || (arrayOfByte.length != localei.fAU))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "data buffer is incorrect");
        this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
        this.cjh.a(3, -1, "", this);
        return;
      }
      int i = c.a(this.fhv.field_fileFullPath, arrayOfByte);
      if (i != 0)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "append to file failed:" + i);
        this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
        this.cjh.a(3, -1, "", this);
        return;
      }
      a locala = this.fhv;
      locala.field_offset += arrayOfByte.length;
      if (this.fhv.field_offset == this.fhv.field_totalLen)
        this.fhv.field_status = 199L;
      if (this.ctM != null)
        com.tencent.mm.sdk.platformtools.an.i(new af(this));
      if (this.fhz);
      for (boolean bool = true; !bool; bool = ba.HF().a(this.fhv, new String[0]))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "onGYNetEnd update info ret:" + i);
        this.cAz = (-10000 - com.tencent.mm.compatible.g.j.qe());
        this.cjh.a(3, -1, "", this);
        return;
      }
      if (this.fhv.field_status == 199L)
      {
        com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject2 = new Object[7];
        arrayOfObject2[0] = Integer.valueOf(0);
        arrayOfObject2[1] = Integer.valueOf(2);
        arrayOfObject2[2] = Long.valueOf(this.startTime);
        arrayOfObject2[3] = Long.valueOf(cj.FD());
        arrayOfObject2[4] = Integer.valueOf(h.M(al.getContext()));
        arrayOfObject2[5] = Integer.valueOf(CdnTransportEngine.coQ);
        arrayOfObject2[6] = Long.valueOf(this.fhv.field_totalLen - this.fhx);
        localm2.d(10420, arrayOfObject2);
        this.cjh.a(0, 0, "", this);
        return;
      }
      if (this.fhv.field_status == 102L)
      {
        this.cjh.a(3, -1, "", this);
        this.cAz = -20102;
        return;
      }
    }
    while (a(wM(), this.cjh) >= 0);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadAppAttach", "onGYNetEnd : doScene fail");
    this.cjh.a(3, -1, "", this);
  }

  public final long apX()
  {
    return this.fhw;
  }

  public final void apY()
  {
    this.fhA = true;
    if (this.fhA)
      c.a(this.fhv.field_fileFullPath, "#!AMR\n".getBytes());
  }

  public final int getType()
  {
    return 221;
  }

  public final String oJ()
  {
    return this.fhv.field_mediaSvrId;
  }

  public final void pause()
  {
    if (!this.fhz)
    {
      com.tencent.mm.modelcdntran.j.yy().eU(this.ctR);
      this.fhv = ba.HF().qk(this.mediaId);
    }
    if (this.fhv == null);
    do
    {
      return;
      this.fhv.field_status = 102L;
    }
    while (this.fhz);
    ba.HF().a(this.fhv, new String[0]);
  }

  protected final int we()
  {
    return 180;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.ab
 * JD-Core Version:    0.6.2
 */