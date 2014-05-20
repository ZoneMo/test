package com.tencent.mm.w;

import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.j;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.bm;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.pointers.PString;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.ye;
import com.tencent.mm.protocal.a.yf;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import java.util.Map;
import junit.framework.Assert;

public final class y extends x
  implements ab
{
  private String TAG = "MicroMsg.NetSceneUploadMsgImg";
  private ak bLP = null;
  private com.tencent.mm.n.m cjh;
  private final com.tencent.mm.n.a cke;
  private long cpL;
  private long cpM;
  private final com.tencent.mm.n.n ctM;
  private long ctN;
  private int ctP = 0;
  private com.tencent.mm.modelstat.c ctQ = null;
  private String ctR = "";
  private int ctS = 0;
  private com.tencent.mm.modelcdntran.n ctV = new aa(this);
  private int cub = 16384;
  private ad cuc = null;
  private String cud;
  private int startOffset = -1;
  private long startTime = 0L;

  public y(int paramInt1, int paramInt2)
  {
    this.ctN = paramInt1;
    this.cpL = paramInt1;
    this.ctP = paramInt2;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new ye());
    localb.b(new yf());
    localb.es("/cgi-bin/micromsg-bin/uploadmsgimg");
    localb.cN(110);
    localb.cO(9);
    localb.cP(1000000009);
    this.cke = localb.wx();
    this.ctM = null;
    com.tencent.mm.sdk.platformtools.aa.d(this.TAG, "FROM B SERVICE:" + this.ctN);
    if (!o.dI((int)this.ctN))
      this.ctN = -1L;
    e locale1;
    do
    {
      return;
      locale1 = ag.Ba().E(this.ctN);
      this.cpM = locale1.AF();
    }
    while (locale1 == null);
    if (paramInt2 == 1)
      this.cpL = locale1.AK();
    for (e locale2 = ag.Ba().E(this.cpL); ; locale2 = locale1)
    {
      e locale3 = ag.Ba().dH((int)locale2.AG());
      if (locale3 != null)
        this.cpM = locale3.AF();
      this.bLP = be.uz().sw().bU(this.cpM);
      if ((this.bLP != null) && (this.bLP.Bo() != this.cpM))
      {
        this.bLP = null;
        return;
      }
      if (this.bLP == null)
        break;
      ye localye = (ye)this.cke.wr();
      localye.fzs = new rw().sn(v.th());
      localye.fzt = new rw().sn(this.bLP.aCl());
      localye.fEd = locale2.getOffset();
      localye.fAL = locale2.vR();
      localye.fzu = this.bLP.getType();
      localye.fLx = paramInt2;
      if (bm.ac(al.getContext()));
      for (int i = 1; ; i = 2)
      {
        localye.fUN = i;
        localye.fWg = locale2.getSource();
        if (locale2.getOffset() != 0)
          break;
        this.ctQ = new com.tencent.mm.modelstat.c(110, true, locale2.vR());
        return;
      }
    }
  }

  public y(int paramInt1, int paramInt2, byte paramByte)
  {
    this.ctN = paramInt1;
    this.cpL = paramInt1;
    this.ctP = paramInt2;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new ye());
    localb.b(new yf());
    localb.es("/cgi-bin/micromsg-bin/uploadmsgimg");
    localb.cN(110);
    localb.cO(9);
    localb.cP(1000000009);
    this.cke = localb.wx();
    this.ctM = null;
    com.tencent.mm.sdk.platformtools.aa.d(this.TAG, "FROM C SERVICE:" + this.ctN);
    if (!o.dI((int)this.ctN))
      this.ctN = -1L;
    e locale1;
    do
    {
      return;
      locale1 = ag.Ba().E(this.ctN);
      this.cpM = locale1.AF();
      locale1.setStatus(0);
      locale1.dA(0);
      locale1.setOffset(0);
      ag.Ba().a((int)this.cpL, locale1);
    }
    while (locale1 == null);
    if (paramInt2 == 1)
      this.cpL = locale1.AK();
    for (e locale2 = ag.Ba().E(this.cpL); ; locale2 = locale1)
    {
      this.bLP = be.uz().sw().bU(this.cpM);
      if (this.bLP == null)
        break;
      this.bLP.setStatus(1);
      String str = locale2.AJ();
      label359: ye localye;
      if ((str != null) && (str.startsWith("THUMBNAIL_DIRPATH://")))
      {
        this.bLP.uN(str);
        be.uz().sw().a(this.cpM, this.bLP);
        localye = (ye)this.cke.wr();
        localye.fzs = new rw().sn(v.th());
        localye.fzt = new rw().sn(this.bLP.aCl());
        localye.fEd = locale2.getOffset();
        localye.fAL = locale2.vR();
        localye.fzu = this.bLP.getType();
        localye.fLx = paramInt2;
        if (!bm.ac(al.getContext()))
          break label555;
      }
      label555: for (int i = 1; ; i = 2)
      {
        localye.fUN = i;
        localye.fWg = locale2.getSource();
        if (locale2.getOffset() != 0)
          break;
        this.ctQ = new com.tencent.mm.modelstat.c(110, true, locale2.vR());
        return;
        this.bLP.uN("THUMBNAIL://" + locale2.AG());
        break label359;
      }
    }
  }

  public y(int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2, int paramInt3, ad paramad)
  {
    this(paramInt1, paramString1, paramString2, paramString3, paramInt2, null, paramInt3, "", "");
    this.cuc = paramad;
  }

  public y(int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2, com.tencent.mm.n.n paramn)
  {
    this(paramInt1, paramString1, paramString2, paramString3, paramInt2, paramn, 0, "", "");
  }

  public y(int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2, com.tencent.mm.n.n paramn, int paramInt3, String paramString4, String paramString5)
  {
    this.ctM = paramn;
    this.ctP = paramInt2;
    PString localPString = new PString();
    PInt localPInt1 = new PInt();
    PInt localPInt2 = new PInt();
    this.cud = paramString4;
    localPString.value = paramString5;
    this.ctN = ag.Ba().a(paramString3, paramInt2, paramInt1, paramInt3, localPString, localPInt1, localPInt2);
    this.cpL = this.ctN;
    com.tencent.mm.sdk.platformtools.aa.d(this.TAG, "FROM A UI :" + paramString2 + " " + this.ctN);
    if ((this.ctN < 0L) || (!o.dI((int)this.ctN)))
    {
      com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "insert to img storage failed id:" + this.ctN);
      this.cpM = -1L;
      this.cke = null;
      return;
    }
    boolean bool1;
    label262: boolean bool2;
    label477: e locale1;
    if (this.ctN >= 0L)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
      localb.a(new ye());
      localb.b(new yf());
      localb.es("/cgi-bin/micromsg-bin/uploadmsgimg");
      localb.cN(110);
      localb.cO(9);
      localb.cP(1000000009);
      this.cke = localb.wx();
      this.bLP = new ak();
      this.bLP.setType(w.de(paramString2));
      this.bLP.uK(paramString2);
      this.bLP.bZ(1);
      this.bLP.uN(localPString.value);
      this.bLP.bXI = localPInt1.value;
      this.bLP.bXJ = localPInt2.value;
      this.bLP.G(bv.dA(this.bLP.aCl()));
      ag.Ba().b(this.bLP.ot(), com.tencent.mm.an.a.getDensity(al.getContext()));
      this.cpM = be.uz().sw().v(this.bLP);
      if (this.cpM < 0L)
        break label852;
      bool2 = true;
      Assert.assertTrue(bool2);
      com.tencent.mm.sdk.platformtools.aa.i(this.TAG, "NetSceneUploadMsgImg: local msgId = " + this.cpM);
      locale1 = ag.Ba().E(this.ctN);
      locale1.dy((int)this.cpM);
      ag.Ba().a(this.ctN, locale1);
      if (paramInt2 != 1)
        break label864;
      this.cpL = locale1.AK();
    }
    label852: label864: for (e locale2 = ag.Ba().E(this.cpL); ; locale2 = locale1)
    {
      locale2.cJ(com.tencent.mm.a.c.ar(ag.Ba().j(locale2.AI(), "", "")));
      ag.Ba().a(this.cpL, locale2);
      com.tencent.mm.sdk.platformtools.aa.d(this.TAG, "NetSceneUploadMsgImg: local imgId = " + this.cpL + " img len = " + locale2.vR());
      ye localye = (ye)this.cke.wr();
      localye.fzs = new rw().sn(paramString1);
      localye.fzt = new rw().sn(paramString2);
      localye.fEd = locale2.getOffset();
      localye.fAL = locale2.vR();
      localye.fzu = this.bLP.getType();
      localye.fLx = paramInt2;
      if (bm.ac(al.getContext()));
      for (int i = 1; ; i = 2)
      {
        localye.fUN = i;
        localye.fWg = locale2.getSource();
        com.tencent.mm.sdk.platformtools.aa.d(this.TAG, "dkimgsource :" + locale2.getSource());
        if (locale2.getOffset() == 0)
          this.ctQ = new com.tencent.mm.modelstat.c(110, true, locale2.vR());
        if (paramn == null)
          break;
        an.i(new z(this, paramn, locale2.getOffset(), locale2.vR()));
        return;
        bool1 = false;
        break label262;
        bool2 = false;
        break label477;
      }
    }
  }

  public y(int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2, String paramString4, String paramString5)
  {
    this(paramInt1, paramString1, paramString2, paramString3, paramInt2, null, 0, paramString4, paramString5);
  }

  private boolean a(e parame, int paramInt1, int paramInt2, int paramInt3)
  {
    String str1 = this.TAG;
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = this.ctR;
    arrayOfObject1[1] = Integer.valueOf(paramInt1);
    arrayOfObject1[2] = Integer.valueOf(paramInt2);
    arrayOfObject1[3] = Integer.valueOf(paramInt3);
    com.tencent.mm.sdk.platformtools.aa.e(str1, "cdntra clientid:%s start:%d svrid:%d createtime:%d", arrayOfObject1);
    String str2 = this.TAG;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(paramInt2);
    arrayOfObject2[1] = Integer.valueOf(at.cHK);
    com.tencent.mm.sdk.platformtools.aa.e(str2, "dkmsgid  set svrmsgid %d -> %d", arrayOfObject2);
    if ((10007 == at.cHJ) && (at.cHK != 0))
    {
      paramInt2 = at.cHK;
      at.cHK = 0;
    }
    parame.setOffset(paramInt1);
    if (f.b(parame))
    {
      e locale = ag.Ba().E(this.ctN);
      locale.dA(paramInt2);
      ag.Ba().a(this.ctN, locale);
    }
    if (ag.Ba().a(this.cpL, parame) < 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "update db failed local id:" + this.cpL + " server id:" + parame.AH());
      o.dK((int)this.ctN);
      o.dJ((int)this.ctN);
      this.cjh.a(3, -1, "", this);
      if (this.cuc != null)
        this.cuc.AS();
    }
    do
    {
      return false;
      if (this.ctM != null)
        an.i(new ac(this, parame.getOffset(), parame.vR()));
      if (!f.b(parame))
        break;
      if (cj.hX(this.ctR))
      {
        com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject3 = new Object[7];
        arrayOfObject3[0] = Integer.valueOf(0);
        arrayOfObject3[1] = Integer.valueOf(1);
        arrayOfObject3[2] = Long.valueOf(this.startTime);
        arrayOfObject3[3] = Long.valueOf(cj.FD());
        arrayOfObject3[4] = Integer.valueOf(h.M(al.getContext()));
        arrayOfObject3[5] = Integer.valueOf(this.ctS);
        arrayOfObject3[6] = Integer.valueOf(parame.vR() - this.startOffset);
        localm.d(10420, arrayOfObject3);
      }
      this.bLP.cL(74);
      this.bLP.setStatus(2);
      this.bLP.dA(paramInt2);
      be.uz().sw().a(this.cpM, this.bLP);
      o.dJ((int)this.ctN);
      if (this.ctQ != null)
        this.ctQ.F(0L);
      this.cjh.a(0, 0, "", this);
    }
    while (this.cuc == null);
    this.cuc.AS();
    return false;
    return true;
  }

  public final int AV()
  {
    return (int)this.ctN;
  }

  public final ak AW()
  {
    return this.bLP;
  }

  public final int a(r paramr, com.tencent.mm.n.m paramm)
  {
    int m;
    if (this.cpL < 0L)
    {
      com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "doScene invalid imgLocalId:" + this.cpL);
      m = -1;
    }
    label311: label729: 
    do
    {
      return m;
      if (this.bLP == null)
      {
        String str10 = this.TAG;
        Object[] arrayOfObject6 = new Object[1];
        arrayOfObject6[0] = Long.valueOf(this.cpL);
        com.tencent.mm.sdk.platformtools.aa.b(str10, "doScene msg is null imgid:%d", arrayOfObject6);
        o.dK((int)this.ctN);
        return -1;
      }
      this.cjh = paramm;
      ye localye = (ye)this.cke.wr();
      e locale1 = ag.Ba().E(this.cpL);
      e locale2 = ag.Ba().dH((int)locale1.AG());
      if (locale2 != null)
      {
        if (locale2.getStatus() == -1)
          return -1;
      }
      else if ((locale1 == null) || (locale1.getStatus() == -1))
        return -1;
      String str1 = ag.Ba().j(locale1.AI(), "", "");
      String str2 = ag.Ba().j(locale1.AJ(), "", "");
      String str3 = this.bLP.aCl();
      long l = this.cpL;
      boolean bool;
      String str4;
      int i1;
      int i;
      if ((str3 != null) && (l >= 0L))
      {
        bool = true;
        Assert.assertTrue(bool);
        str4 = str3 + l;
        localye.fYw = new rw().sn(str4);
        if (this.startTime == 0L)
        {
          this.startTime = cj.FD();
          this.startOffset = locale1.getOffset();
          if (this.ctP != 1)
            break label398;
          i1 = CdnTransportEngine.coM;
          this.ctS = i1;
        }
        if (!w.dc(this.bLP.aCl()))
          break label406;
        String str9 = this.TAG;
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = this.bLP.aCl();
        com.tencent.mm.sdk.platformtools.aa.c(str9, "cdntra not use cdn user:%s", arrayOfObject5);
        i = 0;
      }
      while (true)
      {
        if (i == 0)
          break label948;
        com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "cdntra use cdn return -1 for onGYNetEnd clientid:%s", new Object[] { str4 });
        return 0;
        bool = false;
        break;
        i1 = CdnTransportEngine.coN;
        break label311;
        j.yy();
        if ((!com.tencent.mm.modelcdntran.b.ys()) && (cj.hX(locale1.AN())))
        {
          String str8 = this.TAG;
          Object[] arrayOfObject4 = new Object[2];
          j.yy();
          arrayOfObject4[0] = Boolean.valueOf(com.tencent.mm.modelcdntran.b.ys());
          arrayOfObject4[1] = locale1.AN();
          com.tencent.mm.sdk.platformtools.aa.c(str8, "cdntra not use cdn flag:%b getCdnInfo:%s", arrayOfObject4);
          i = 0;
        }
        else
        {
          this.ctR = h.a("upimg", this.bLP.DL(), this.bLP.aCl(), this.bLP.Bo());
          if (cj.hX(this.ctR))
          {
            String str7 = this.TAG;
            Object[] arrayOfObject3 = new Object[1];
            arrayOfObject3[0] = Long.valueOf(this.cpL);
            com.tencent.mm.sdk.platformtools.aa.c(str7, "cdntra genClientId failed not use cdn imgLocalId:%d", arrayOfObject3);
            i = 0;
          }
          else
          {
            com.tencent.mm.modelcdntran.m localm = new com.tencent.mm.modelcdntran.m();
            localm.cpJ = this.ctV;
            localm.field_mediaId = this.ctR;
            localm.field_fullpath = str1;
            localm.field_thumbpath = str2;
            localm.field_fileType = this.ctS;
            localm.field_talker = this.bLP.aCl();
            localm.field_priority = CdnTransportEngine.coK;
            localm.field_needStorage = false;
            localm.field_isStreamMedia = false;
            Map localMap = u.aL(this.cud, "msg");
            if (localMap != null)
              if (this.ctP != 1)
              {
                localm.field_fileId = ((String)localMap.get(".msg.img.$cdnmidimgurl"));
                int n = cj.getInt((String)localMap.get(".msg.img.$length"), 0);
                localm.field_midFileLength = n;
                localm.field_totalLen = n;
                localm.field_aesKey = ((String)localMap.get(".msg.img.$aeskey"));
              }
            while (true)
            {
              if (j.yy().b(localm))
                break label899;
              String str6 = this.TAG;
              Object[] arrayOfObject2 = new Object[1];
              arrayOfObject2[0] = this.ctR;
              com.tencent.mm.sdk.platformtools.aa.b(str6, "cdntra addSendTask failed. clientid:%s", arrayOfObject2);
              this.ctR = "";
              i = 0;
              break;
              localm.field_fileId = ((String)localMap.get(".msg.img.$cdnbigimgurl"));
              localm.field_midFileLength = cj.getInt((String)localMap.get(".msg.img.$length"), 0);
              localm.field_totalLen = cj.getInt((String)localMap.get(".msg.img.$hdlength"), 0);
              break label729;
              String str5 = this.TAG;
              Object[] arrayOfObject1 = new Object[1];
              arrayOfObject1[0] = locale1.AN();
              com.tencent.mm.sdk.platformtools.aa.d(str5, "parse cdnInfo failed. [%s]", arrayOfObject1);
            }
            if (cj.hW(locale1.AN()).length() <= 0)
            {
              locale1.fT("CDNINFO_SEND");
              locale1.cL(4096);
              ag.Ba().a(this.cpL, locale1);
            }
            i = 1;
          }
        }
      }
      int j = locale1.AD();
      if (j >= we())
      {
        com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "doScene limit net time:" + j);
        o.dK((int)this.ctN);
        return -1;
      }
      locale1.dw(j + 1);
      locale1.cL(512);
      ag.Ba().a(this.cpL, locale1);
      int k = locale1.vR() - locale1.getOffset();
      if (k > this.cub)
        k = this.cub;
      if (com.tencent.mm.a.c.ar(str1) > 10485760)
      {
        com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "doScene, file size is too large");
        return -1;
      }
      byte[] arrayOfByte = com.tencent.mm.a.c.g(str1, locale1.getOffset(), k);
      if ((arrayOfByte == null) || (arrayOfByte.length <= 0))
        return -1;
      localye.fAU = arrayOfByte.length;
      localye.fEd = locale1.getOffset();
      localye.fAJ = new rv().bM(arrayOfByte);
      if (this.ctQ != null)
        this.ctQ.CN();
      m = a(paramr, this.cke, this);
    }
    while (m >= 0);
    label398: label406: label948: com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "doScene netId error");
    label899: o.dK((int)this.ctN);
    return m;
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    yf localyf = (yf)((com.tencent.mm.n.a)paramaj).ws();
    com.tencent.mm.sdk.platformtools.aa.d(this.TAG, "cdntra onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " useCdnTransClientId:" + this.ctR);
    if ((paramInt2 == 3) && (paramInt3 == -1) && (!cj.hX(this.ctR)))
    {
      String str = this.TAG;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.ctR;
      com.tencent.mm.sdk.platformtools.aa.c(str, "cdntra using cdn trans,  wait cdn service callback! clientid:%s", arrayOfObject3);
    }
    do
    {
      e locale;
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if ((paramInt2 == 0) && (paramInt3 == 0))
                break;
              com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "onGYNetEnd failed errtype:" + paramInt2 + " errcode:" + paramInt3);
              o.dK((int)this.ctN);
              o.dJ((int)this.ctN);
              com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
              Object[] arrayOfObject1 = new Object[7];
              arrayOfObject1[0] = Integer.valueOf(paramInt3);
              arrayOfObject1[1] = Integer.valueOf(1);
              arrayOfObject1[2] = Long.valueOf(this.startTime);
              arrayOfObject1[3] = Long.valueOf(cj.FD());
              arrayOfObject1[4] = Integer.valueOf(h.M(al.getContext()));
              arrayOfObject1[5] = Integer.valueOf(this.ctS);
              arrayOfObject1[6] = Integer.valueOf(0);
              localm1.d(10420, arrayOfObject1);
              this.cjh.a(paramInt2, paramInt3, paramString, this);
            }
            while (this.cuc == null);
            this.cuc.AS();
            return;
            this.cub = localyf.fAU;
            if (this.cub > 16384)
              this.cub = 16384;
            locale = ag.Ba().E(this.cpL);
            com.tencent.mm.sdk.platformtools.aa.v(this.TAG, "onGYNetEnd localId:" + this.cpL + "  totalLen:" + locale.vR() + " offSet:" + locale.getOffset());
            if ((localyf.fEd >= 0) && ((localyf.fEd <= locale.vR()) || (locale.vR() <= 0)))
              break;
            com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "onGYNetEnd invalid server return value : startPos = " + localyf.fEd + " img totalLen = " + locale.vR());
            o.dK((int)this.ctN);
            o.dJ((int)this.ctN);
            com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
            Object[] arrayOfObject2 = new Object[7];
            arrayOfObject2[0] = Integer.valueOf(-2);
            arrayOfObject2[1] = Integer.valueOf(1);
            arrayOfObject2[2] = Long.valueOf(this.startTime);
            arrayOfObject2[3] = Long.valueOf(cj.FD());
            arrayOfObject2[4] = Integer.valueOf(h.M(al.getContext()));
            arrayOfObject2[5] = Integer.valueOf(this.ctS);
            arrayOfObject2[6] = Integer.valueOf(0);
            localm2.d(10420, arrayOfObject2);
            this.cjh.a(4, -2, "", this);
          }
          while (this.cuc == null);
          this.cuc.AS();
          return;
          if ((localyf.fEd >= locale.getOffset()) && ((!f.b(locale)) || (this.cub > 0)))
            break;
          com.tencent.mm.sdk.platformtools.aa.e(this.TAG, "onGYNetEnd invalid data startPos = " + localyf.fEd + " totalLen = " + locale.vR() + " off:" + locale.getOffset());
          o.dK((int)this.ctN);
          o.dJ((int)this.ctN);
          this.cjh.a(4, -1, "", this);
        }
        while (this.cuc == null);
        this.cuc.AS();
        return;
        com.tencent.mm.sdk.platformtools.aa.d("ImgInfoLogic", "resp.rImpl.getStartPos() " + localyf.fEd);
      }
      while ((!a(locale, localyf.fEd, localyf.fzo, localyf.fzy)) || (a(wM(), this.cjh) >= 0));
      o.dJ((int)this.ctN);
      this.cjh.a(3, -1, "", this);
    }
    while (this.cuc == null);
    this.cuc.AS();
  }

  public final int getType()
  {
    return 110;
  }

  protected final int we()
  {
    if (this.ctP == 0)
      return 100;
    return 1350;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.y
 * JD-Core Version:    0.6.2
 */