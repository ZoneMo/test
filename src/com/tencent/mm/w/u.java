package com.tencent.mm.w;

import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.j;
import com.tencent.mm.n.a;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.jg;
import com.tencent.mm.protocal.a.jh;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import java.io.File;
import java.util.Map;
import junit.framework.Assert;

public final class u extends com.tencent.mm.n.x
  implements ab
{
  private String TAG = "MicroMsg.NetSceneGetMsgImg";
  private ak bLP = null;
  private com.tencent.mm.n.m cjh;
  private int ckU = 0;
  private final a cke;
  private long cpL;
  private final com.tencent.mm.n.n ctM;
  private final long ctN;
  private int ctO;
  private int ctP;
  private com.tencent.mm.modelstat.c ctQ = null;
  private String ctR = "";
  private int ctS = 0;
  String ctT = "";
  String ctU = "";
  private com.tencent.mm.modelcdntran.n ctV = new w(this);
  private int startOffset = -1;
  private long startTime = 0L;
  private int token = -1;

  public u(long paramLong1, long paramLong2, int paramInt, com.tencent.mm.n.n paramn)
  {
    boolean bool;
    e locale1;
    if ((paramLong1 >= 0L) && (paramLong2 >= 0L) && (paramn != null))
    {
      bool = true;
      Assert.assertTrue(bool);
      this.ctM = paramn;
      this.ctP = paramInt;
      this.ctN = paramLong1;
      this.cpL = paramLong1;
      locale1 = ag.Ba().E(this.cpL);
      if (paramInt != 1)
        break label507;
      this.cpL = locale1.AK();
    }
    label507: for (e locale2 = ag.Ba().E(this.cpL); ; locale2 = locale1)
    {
      this.TAG = (this.TAG + "[" + this.cpL + "]");
      com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
      localb.a(new jg());
      localb.b(new jh());
      localb.es("/cgi-bin/micromsg-bin/getmsgimg");
      localb.cN(109);
      localb.cO(10);
      localb.cP(1000000010);
      this.cke = localb.wx();
      jg localjg = (jg)this.cke.wr();
      this.bLP = be.uz().sw().bU(paramLong2);
      localjg.fEd = locale2.getOffset();
      localjg.fAL = locale2.vR();
      String str = this.TAG;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(locale2.getOffset());
      arrayOfObject[1] = Integer.valueOf(locale2.vR());
      arrayOfObject[2] = cj.azV();
      com.tencent.mm.sdk.platformtools.aa.e(str, "cdntra offset:%d total:%d stack:[%s]", arrayOfObject);
      localjg.fzo = this.bLP.AH();
      localjg.fzs = new rw().sn(this.bLP.aCl());
      localjg.fzt = new rw().sn((String)be.uz().sr().get(2));
      localjg.fLx = paramInt;
      if (locale2.getOffset() == 0)
        this.ctQ = new com.tencent.mm.modelstat.c(109, false, locale2.vR());
      this.ctO = 8192;
      if (paramn != null)
        an.i(new v(this, paramn, locale2.getOffset(), locale2.vR()));
      return;
      bool = false;
      break;
    }
  }

  private boolean a(e parame, int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    parame.cJ(paramInt1);
    parame.setOffset(paramInt2 + paramInt3);
    this.ctO = paramInt3;
    if (ag.Ba().a(this.cpL, parame) < 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "onGYNetEnd : update img fail");
      this.cjh.a(3, -1, "", this);
      return false;
    }
    if (paramArrayOfByte != null)
      com.tencent.mm.a.c.a(this.ctU, paramArrayOfByte);
    String str1 = this.TAG;
    String str2 = "onGYNetEnd : offset = " + parame.getOffset() + " totalLen = " + parame.vR() + " stack:[%s]";
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = cj.azV();
    com.tencent.mm.sdk.platformtools.aa.e(str1, str2, arrayOfObject1);
    if (this.ctM != null)
      an.i(new x(this, parame));
    String str3 = this.TAG;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Boolean.valueOf(parame.AL());
    arrayOfObject2[1] = this.ctR;
    com.tencent.mm.sdk.platformtools.aa.e(str3, "cdntra check iscompleted :%b clientid:%s", arrayOfObject2);
    String str4;
    String str5;
    if (parame.AL())
    {
      if (cj.hX(this.ctR))
      {
        com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject4 = new Object[7];
        arrayOfObject4[0] = Integer.valueOf(0);
        arrayOfObject4[1] = Integer.valueOf(2);
        arrayOfObject4[2] = Long.valueOf(this.startTime);
        arrayOfObject4[3] = Long.valueOf(cj.FD());
        arrayOfObject4[4] = Integer.valueOf(h.M(al.getContext()));
        arrayOfObject4[5] = Integer.valueOf(this.ctS);
        arrayOfObject4[6] = Integer.valueOf(paramInt1 - this.startOffset);
        localm.d(10420, arrayOfObject4);
      }
      str4 = this.ctU;
      if ((str4 == null) || (str4.equals("")))
        str5 = null;
    }
    while (true)
    {
      String str6 = ag.Ba().j(this.ctT, null, str5);
      new File(this.ctU).renameTo(new File(str6));
      parame.fR(this.ctT + str5);
      String str7 = this.TAG;
      Object[] arrayOfObject3 = new Object[4];
      arrayOfObject3[0] = str5;
      arrayOfObject3[1] = this.ctU;
      arrayOfObject3[2] = str6;
      arrayOfObject3[3] = parame.AI();
      com.tencent.mm.sdk.platformtools.aa.e(str7, "cdntra ext:[%s] tmp:[%s] full:[%s] bigimg:[%s]", arrayOfObject3);
      ag.Ba().a(this.cpL, parame);
      if (this.ctQ != null)
        this.ctQ.F(parame.vR());
      this.cjh.a(0, 0, "", this);
      return false;
      byte[] arrayOfByte = com.tencent.mm.a.c.g(str4, 0, 2);
      if ((arrayOfByte == null) || (arrayOfByte.length < 2))
      {
        str5 = null;
      }
      else
      {
        int i = arrayOfByte[0];
        if (i < 0)
          i += 256;
        int j = arrayOfByte[1];
        if (j < 0)
          j += 256;
        if ((i == 66) && (j == 77))
        {
          str5 = ".bmp";
        }
        else if ((i == 255) && (j == 216))
        {
          str5 = ".jpg";
        }
        else if ((i == 137) && (j == 80))
        {
          str5 = ".png";
        }
        else if ((i == 71) && (j == 73))
        {
          str5 = ".gif";
          continue;
          return true;
        }
        else
        {
          str5 = ".jpg";
        }
      }
    }
  }

  public final int AT()
  {
    return this.token;
  }

  public final long AU()
  {
    return this.ctN;
  }

  public final int a(r paramr, com.tencent.mm.n.m paramm)
  {
    this.cjh = paramm;
    jg localjg = (jg)this.cke.wr();
    e locale = ag.Ba().E(this.cpL);
    if (locale.getStatus() != 0)
      return -1;
    this.ctT = f.h(locale.AI().getBytes());
    this.ctU = ag.Ba().j(this.ctT, null, ".temp");
    int j;
    int i;
    if (this.startTime == 0L)
    {
      this.startTime = cj.FD();
      this.startOffset = locale.getOffset();
      if (this.ctP == 1)
      {
        j = CdnTransportEngine.coM;
        this.ctS = j;
      }
    }
    else
    {
      localjg.fzs.getString();
      if (!cj.hX(locale.AN()))
        break label187;
      i = 0;
    }
    while (true)
    {
      if (i == 0)
        break label678;
      String str5 = this.TAG;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.ctR;
      com.tencent.mm.sdk.platformtools.aa.e(str5, "cdntra this img use cdn : %s", arrayOfObject3);
      return 0;
      j = CdnTransportEngine.coN;
      break;
      label187: Map localMap = com.tencent.mm.sdk.platformtools.u.aL(locale.AN(), "msg");
      if (localMap == null)
      {
        String str9 = this.TAG;
        Object[] arrayOfObject6 = new Object[1];
        arrayOfObject6[0] = locale.AN();
        com.tencent.mm.sdk.platformtools.aa.b(str9, "parse cdnInfo failed. [%s]", arrayOfObject6);
        i = 0;
      }
      else
      {
        this.ckU = 0;
        String str8;
        if (this.ctP != 1)
        {
          str8 = (String)localMap.get(".msg.img.$cdnmidimgurl");
          this.ckU = cj.getInt((String)localMap.get(".msg.img.$length"), 0);
        }
        String str1;
        for (Object localObject = str8; ; localObject = str1)
        {
          String str2 = this.TAG;
          Object[] arrayOfObject1 = new Object[3];
          arrayOfObject1[0] = Integer.valueOf(this.ctP);
          arrayOfObject1[1] = Integer.valueOf(this.ckU);
          arrayOfObject1[2] = localObject;
          com.tencent.mm.sdk.platformtools.aa.e(str2, "cdntra read xml  comptype:%d totallen:%d url:[%s]", arrayOfObject1);
          if (!cj.hX((String)localObject))
            break label412;
          com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "cdntra get cdnUrlfailed.");
          i = 0;
          break;
          str1 = (String)localMap.get(".msg.img.$cdnbigimgurl");
          this.ckU = cj.getInt((String)localMap.get(".msg.img.$hdlength"), 0);
        }
        label412: String str3 = (String)localMap.get(".msg.img.$aeskey");
        if (cj.hX(str3))
        {
          com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "cdntra get aes key failed.");
          i = 0;
        }
        else
        {
          this.ctR = h.a("downimg", locale.AE(), this.bLP.aCl(), this.bLP.Bo());
          if (cj.hX(this.ctR))
          {
            String str7 = this.TAG;
            Object[] arrayOfObject5 = new Object[1];
            arrayOfObject5[0] = Long.valueOf(this.cpL);
            com.tencent.mm.sdk.platformtools.aa.c(str7, "cdntra genClientId failed not use cdn imgLocalId:%d", arrayOfObject5);
            i = 0;
          }
          else
          {
            com.tencent.mm.modelcdntran.m localm = new com.tencent.mm.modelcdntran.m();
            localm.field_mediaId = this.ctR;
            localm.field_fullpath = this.ctU;
            localm.field_fileType = this.ctS;
            localm.field_totalLen = this.ckU;
            localm.field_aesKey = str3;
            localm.field_fileId = ((String)localObject);
            localm.field_priority = CdnTransportEngine.coK;
            localm.cpJ = this.ctV;
            if (!j.yy().a(localm))
            {
              String str6 = this.TAG;
              Object[] arrayOfObject4 = new Object[1];
              arrayOfObject4[0] = this.ctR;
              com.tencent.mm.sdk.platformtools.aa.b(str6, "addRecvTask failed :%s", arrayOfObject4);
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
    label678: String str4 = this.TAG;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = this.ctR;
    com.tencent.mm.sdk.platformtools.aa.e(str4, "cdntra this img NOT USE CDN: %s", arrayOfObject2);
    locale.fT("");
    locale.cL(4096);
    ag.Ba().a(this.cpL, locale);
    localjg.fEd = locale.getOffset();
    localjg.fAU = this.ctO;
    localjg.fAL = locale.vR();
    if (this.ctQ != null)
      this.ctQ.CN();
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 == 3) && (paramInt3 == -1) && (!cj.hX(this.ctR)))
    {
      String str = this.TAG;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.ctR;
      com.tencent.mm.sdk.platformtools.aa.c(str, "cdntra using cdn trans,  wait cdn service callback! clientid:%s", arrayOfObject3);
    }
    jh localjh;
    e locale;
    do
    {
      return;
      if ((paramInt2 != 0) || (paramInt3 != 0))
      {
        if (paramInt2 == 4)
        {
          com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
          Object[] arrayOfObject1 = new Object[7];
          arrayOfObject1[0] = Integer.valueOf(paramInt3);
          arrayOfObject1[1] = Integer.valueOf(2);
          arrayOfObject1[2] = Long.valueOf(this.startTime);
          arrayOfObject1[3] = Long.valueOf(cj.FD());
          arrayOfObject1[4] = Integer.valueOf(h.M(al.getContext()));
          arrayOfObject1[5] = Integer.valueOf(this.ctS);
          arrayOfObject1[6] = Integer.valueOf(this.ckU - this.startOffset);
          localm1.d(10420, arrayOfObject1);
        }
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
      localjh = (jh)((a)paramaj).ws();
      locale = ag.Ba().E(this.cpL);
      int i;
      if (localjh.fAU <= 0)
      {
        com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "flood control, malformed data_len");
        i = -1;
      }
      while (i != 0)
      {
        com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject2 = new Object[7];
        arrayOfObject2[0] = Integer.valueOf(-1);
        arrayOfObject2[1] = Integer.valueOf(2);
        arrayOfObject2[2] = Long.valueOf(this.startTime);
        arrayOfObject2[3] = Long.valueOf(cj.FD());
        arrayOfObject2[4] = Integer.valueOf(h.M(al.getContext()));
        arrayOfObject2[5] = Integer.valueOf(this.ctS);
        arrayOfObject2[6] = Integer.valueOf(this.ckU - this.startOffset);
        localm2.d(10420, arrayOfObject2);
        this.cjh.a(4, -1, "", this);
        return;
        if ((localjh.fAJ == null) || (localjh.fAU != localjh.fAJ.ayg()))
        {
          com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "flood control, malformed data is null or dataLen not match with data buf length");
          i = -1;
        }
        else if ((localjh.fEd < 0) || (localjh.fEd + localjh.fAU > localjh.fAL))
        {
          com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "flood control, malformed start pos");
          i = -1;
        }
        else if (localjh.fEd != locale.getOffset())
        {
          com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "flood control, malformed start_pos");
          i = -1;
        }
        else
        {
          int j = localjh.fAL;
          i = 0;
          if (j <= 0)
          {
            com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "flood control, malformed total_len");
            i = -1;
          }
        }
      }
    }
    while ((!a(locale, localjh.fAL, localjh.fEd, localjh.fAU, localjh.fAJ.ayh().getBytes())) || (a(wM(), this.cjh) >= 0));
    this.cjh.a(3, -1, "", this);
  }

  public final void dL(int paramInt)
  {
    this.token = paramInt;
  }

  public final int getType()
  {
    return 109;
  }

  protected final int we()
  {
    if (this.ctP == 0)
      return 100;
    return 1280;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.u
 * JD-Core Version:    0.6.2
 */