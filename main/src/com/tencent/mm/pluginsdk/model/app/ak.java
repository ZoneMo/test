package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.a.c;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.j;
import com.tencent.mm.modelcdntran.n;
import com.tencent.mm.n.a;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.sn;
import com.tencent.mm.protocal.a.so;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ap;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;
import junit.framework.Assert;

public final class ak extends x
  implements ab
{
  private long bMS = 0L;
  private com.tencent.mm.storage.ak cad = null;
  private com.tencent.mm.n.m cjh;
  private a cke;
  private String ctR = "";
  private n ctV = new al(this);
  private long startTime = 0L;

  public ak(long paramLong)
  {
    this.bMS = paramLong;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new sn());
    localb.b(new so());
    localb.es("/cgi-bin/micromsg-bin/sendappmsg");
    localb.cN(222);
    localb.cO(107);
    localb.cP(1000000107);
    this.cke = localb.wx();
  }

  public final int a(r paramr, com.tencent.mm.n.m paramm)
  {
    this.cjh = paramm;
    if (this.startTime == 0L)
      this.startTime = cj.FD();
    this.cad = be.uz().sw().bU(this.bMS);
    if ((this.cad == null) || (this.cad.Bo() != this.bMS))
      return -1;
    com.tencent.mm.j.b localb1 = com.tencent.mm.j.b.bR(this.cad.getContent());
    if (localb1 == null);
    for (com.tencent.mm.j.b localb2 = com.tencent.mm.j.b.bR(com.tencent.mm.storage.u.uk(this.cad.getContent()).aAU()); ; localb2 = localb1)
    {
      String str1 = "content != null [[" + this.cad.getContent() + "]]";
      if (localb2 != null);
      for (boolean bool = true; ; bool = false)
      {
        Assert.assertTrue(str1, bool);
        if (localb2 != null)
          break;
        this.cad = null;
        return -1;
      }
      if (!cj.hX(this.cad.ot()));
      for (String str2 = ag.Ba().fW(this.cad.ot()); ; str2 = "")
      {
        int i;
        if ((localb2.type == 8) || (localb2.type == 9) || (localb2.type == 6))
        {
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Integer.valueOf(localb2.type);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneSendAppMsg", "cdntra cdn not support Emoji or voiceremind now type:%d", arrayOfObject1);
          i = 0;
        }
        while (i != 0)
        {
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = this.ctR;
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSendAppMsg", "cdntra use cdn return -1 for onGYNetEnd clientId:%s", arrayOfObject3);
          return 0;
          if (cj.hX(str2))
          {
            Object[] arrayOfObject8 = new Object[1];
            arrayOfObject8[0] = Integer.valueOf(localb2.type);
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneSendAppMsg", "cdntra cdn not support no thumb msg type:%d", arrayOfObject8);
            i = 0;
          }
          else
          {
            int k = c.ar(str2);
            if (k >= CdnTransportEngine.coX)
            {
              Object[] arrayOfObject7 = new Object[2];
              arrayOfObject7[0] = str2;
              arrayOfObject7[1] = Integer.valueOf(k);
              com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneSendAppMsg", "cdntra thumb[%s][%d] Too Big Not Use CDN TRANS", arrayOfObject7);
              i = 0;
            }
            else if (!cj.hX(localb2.cgE))
            {
              Object[] arrayOfObject6 = new Object[1];
              arrayOfObject6[0] = Long.valueOf(this.bMS);
              com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneSendAppMsg", "cdntra attach has been upload by cdn msgid:%d", arrayOfObject6);
              i = 0;
            }
            else
            {
              j.yy();
              if (!com.tencent.mm.modelcdntran.b.ys())
              {
                Object[] arrayOfObject5 = new Object[1];
                j.yy();
                arrayOfObject5[0] = Boolean.valueOf(com.tencent.mm.modelcdntran.b.ys());
                com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneSendAppMsg", "cdntra not use cdn flag:%b ", arrayOfObject5);
                i = 0;
              }
              else
              {
                this.ctR = h.a("upappmsg", this.cad.DL(), this.cad.aCl(), this.cad.Bo());
                if (cj.hX(this.ctR))
                {
                  Object[] arrayOfObject4 = new Object[1];
                  arrayOfObject4[0] = Long.valueOf(this.cad.Bo());
                  com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneSendAppMsg", "cdntra genClientId failed not use cdn msgid:%d", arrayOfObject4);
                  i = 0;
                }
                else
                {
                  com.tencent.mm.modelcdntran.m localm = new com.tencent.mm.modelcdntran.m();
                  localm.cpJ = this.ctV;
                  localm.field_mediaId = this.ctR;
                  localm.field_fullpath = "";
                  localm.field_thumbpath = str2;
                  localm.field_fileType = CdnTransportEngine.coO;
                  localm.field_talker = this.cad.aCl();
                  localm.field_priority = CdnTransportEngine.coK;
                  localm.field_needStorage = false;
                  localm.field_isStreamMedia = false;
                  localm.cpJ = this.ctV;
                  if (!j.yy().b(localm))
                  {
                    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSendAppMsg", "cdntra addSendTask failed.");
                    this.ctR = "";
                    i = 0;
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
        sn localsn = (sn)this.cke.wr();
        com.tencent.mm.protocal.a.u localu = new com.tencent.mm.protocal.a.u();
        localu.fyE = localb2.appId;
        localu.fzT = (this.cad.aCl() + this.cad.Bo() + "T" + this.cad.DL());
        localu.dGS = com.tencent.mm.j.b.a(localb2, null, null, 0, 0);
        localu.fzy = ((int)cj.FC());
        localu.fzq = this.cad.aCl();
        localu.fzp = v.th();
        localu.dGR = localb2.type;
        localu.fzS = localb2.sdkVer;
        localu.fzV = localb2.cgG;
        if (!cj.hX(str2))
        {
          byte[] arrayOfByte = c.g(str2, 0, -1);
          if (!cj.A(arrayOfByte))
            localu.fzU = new rv().bM(arrayOfByte);
        }
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = str2;
        if (localu.fzU != null);
        for (int j = localu.fzU.ayg(); ; j = -1)
        {
          arrayOfObject2[1] = Integer.valueOf(j);
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSendAppMsg", "doScene thumbFile:[%s] thumbdata:%d", arrayOfObject2);
          localsn.fUr = localu;
          return a(paramr, this.cke, this);
        }
      }
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 == 3) && (paramInt3 == -1) && (!cj.hX(this.ctR)))
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.ctR;
      com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneSendAppMsg", "cdntra using cdn trans,  wait cdn service callback! clientid:%s", arrayOfObject3);
      return;
    }
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cad.cL(8);
      this.cad.setStatus(5);
      be.uz().sw().a(this.cad.Bo(), this.cad);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSendAppMsg", "send app msg failed, err=" + paramInt2 + "," + paramInt3);
      if (paramInt2 == 4)
      {
        com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject1 = new Object[7];
        arrayOfObject1[0] = Integer.valueOf(paramInt3);
        arrayOfObject1[1] = Integer.valueOf(1);
        arrayOfObject1[2] = Long.valueOf(this.startTime);
        arrayOfObject1[3] = Long.valueOf(cj.FD());
        arrayOfObject1[4] = Integer.valueOf(h.M(com.tencent.mm.sdk.platformtools.al.getContext()));
        arrayOfObject1[5] = Integer.valueOf(CdnTransportEngine.coO);
        arrayOfObject1[6] = Integer.valueOf(0);
        localm1.d(10420, arrayOfObject1);
      }
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    so localso = (so)((a)paramaj).ws();
    sn localsn = (sn)((a)paramaj).wr();
    this.cad.setStatus(2);
    this.cad.dA(localso.fzo);
    be.uz().sw().a(this.cad.Bo(), this.cad);
    if (localsn.fUr.fzU != null)
    {
      com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject2 = new Object[7];
      arrayOfObject2[0] = Integer.valueOf(0);
      arrayOfObject2[1] = Integer.valueOf(1);
      arrayOfObject2[2] = Long.valueOf(this.startTime);
      arrayOfObject2[3] = Long.valueOf(cj.FD());
      arrayOfObject2[4] = Integer.valueOf(h.M(com.tencent.mm.sdk.platformtools.al.getContext()));
      arrayOfObject2[5] = Integer.valueOf(CdnTransportEngine.coO);
      arrayOfObject2[6] = Integer.valueOf(localsn.fUr.fzU.ayg());
      localm2.d(10420, arrayOfObject2);
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 222;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.ak
 * JD-Core Version:    0.6.2
 */