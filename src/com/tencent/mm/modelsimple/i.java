package com.tencent.mm.modelsimple;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Process;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.model.ce;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.aw;
import com.tencent.mm.n.u;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a;
import com.tencent.mm.protocal.a.ot;
import com.tencent.mm.protocal.a.ou;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.uf;
import com.tencent.mm.protocal.a.wb;
import com.tencent.mm.protocal.bi;
import com.tencent.mm.protocal.p;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.cd;
import com.tencent.mm.storage.d;
import com.tencent.mm.storage.e;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import org.xmlpull.v1.XmlPullParserException;

public final class i extends x
  implements ab
{
  private com.tencent.mm.n.m cjh;
  private final aj cmF = new u();
  private int crh = 3;
  private String cwX = "";
  private String cwY = "";
  private String cwZ = "";
  private String cxa = "";
  private boolean cxb = false;
  private int cxc = 0;

  public i()
  {
    this.cwY = ((String)be.uz().sr().get(3));
    this.cwZ = ((String)be.uz().sr().get(19));
    String str = (String)be.uz().sr().get(2);
    int i = aw.eA(str);
    com.tencent.mm.a.j localj = new com.tencent.mm.a.j(cj.a((Integer)be.uz().sr().get(9), 0));
    if ((i == 1) && (localj.longValue() > 0L));
    for (this.cwX = localj.toString(); ; this.cwX = str)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = str;
      arrayOfObject[1] = Long.valueOf(localj.longValue());
      arrayOfObject[2] = this.cwX;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAuth", "dkwt NetSceneAuth username:%s qq:%d account:%s ", arrayOfObject);
      a(false, "", "", "", 0);
      return;
    }
  }

  public i(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    this(paramString1, paramString2, false, "", "", "", paramInt);
    this.cxa = paramString3;
  }

  public i(String paramString1, String paramString2, String paramString3, boolean paramBoolean, String paramString4, String paramString5, String paramString6)
  {
    this.cwX = paramString1;
    this.cwY = paramString2;
    this.cwZ = paramString3;
    a(paramBoolean, paramString4, paramString5, paramString6, 0);
  }

  public i(String paramString1, String paramString2, boolean paramBoolean, String paramString3, String paramString4, String paramString5, int paramInt)
  {
    this.cwX = paramString1;
    this.cwY = cj.hZ(paramString2);
    this.cwZ = cj.ia(paramString2);
    a(paramBoolean, paramString3, paramString4, paramString5, paramInt);
  }

  private void a(boolean paramBoolean, String paramString1, String paramString2, String paramString3)
  {
    com.tencent.mm.protocal.k localk = (com.tencent.mm.protocal.k)this.cmF.wJ();
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Boolean.valueOf(paramBoolean);
    arrayOfObject1[1] = paramString1;
    arrayOfObject1[2] = paramString2;
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAuth", "dkwt setPass wtseccode:%b secCode:%s sid:%s", arrayOfObject1);
    int i = aw.eA(this.cwX);
    byte[] arrayOfByte;
    Object[] arrayOfObject2;
    if ((paramBoolean) && (cj.hS(this.cwX)) && (!cj.hX(paramString1)) && (cj.hX(paramString2)) && (cj.hX(paramString3)))
    {
      arrayOfByte = be.ur().a(Long.parseLong(this.cwX), paramString1);
      arrayOfObject2 = new Object[11];
      arrayOfObject2[0] = this.cwX;
      arrayOfObject2[1] = Integer.valueOf(i);
      arrayOfObject2[2] = Boolean.valueOf(this.cwY.equals(this.cwZ));
      arrayOfObject2[3] = Boolean.valueOf(paramBoolean);
      arrayOfObject2[4] = paramString1;
      arrayOfObject2[5] = paramString2;
      if (arrayOfByte != null)
        break label456;
    }
    label456: for (int j = -1; ; j = arrayOfByte.length)
    {
      arrayOfObject2[6] = Integer.valueOf(j);
      arrayOfObject2[7] = localk.fxL.fQr;
      arrayOfObject2[8] = localk.fxL.fBF;
      arrayOfObject2[9] = localk.fxL.fBI;
      arrayOfObject2[10] = localk.fxL.fQx;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAuth", "dkwt req account:%s passType:%d full=cut:%b usewt:%b secCode:%s sid:%s loginbuf:%d time:%s lang:%s seq:%s soft:%s", arrayOfObject2);
      if (cj.A(arrayOfByte))
        break label464;
      localk.fxL.fQA = new rv().bM(arrayOfByte);
      localk.fxL.fML = new rw().sn("");
      localk.fxL.fBY = "";
      localk.fxL.fQp = "";
      localk.fxL.fQq = "";
      localk.fxL.fQn = new rw().sn("");
      localk.fxL.fMM = new rw().sn("");
      localk.fxL.fCc = new rw().sn("");
      return;
      boolean bool1 = cj.hS(this.cwX);
      arrayOfByte = null;
      if (!bool1)
        break;
      arrayOfByte = null;
      if (i == 2)
        break;
      boolean bool2 = this.cwY.equals(this.cwZ);
      arrayOfByte = null;
      if (!bool2)
        break;
      arrayOfByte = be.ur().a(Long.parseLong(this.cwX), this.cwZ, true);
      break;
    }
    label464: localk.fxL.fML = new rw().sn(this.cwY);
    localk.fxL.fBY = this.cwZ;
    localk.fxL.fQp = this.cwY;
    localk.fxL.fQq = this.cwZ;
    localk.fxL.fQn = new rw().sn(paramString1);
    localk.fxL.fMM = new rw().sn(paramString2);
    localk.fxL.fCc = new rw().sn(paramString3);
    localk.fxL.fQA = new rv().bM(new byte[0]);
  }

  private void a(boolean paramBoolean, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    com.tencent.mm.protocal.k localk = (com.tencent.mm.protocal.k)this.cmF.wJ();
    localk.bQ(0);
    localk.fxL.fBA = this.cxa;
    localk.fxL.fQr = cj.azR();
    localk.fxL.fBF = com.tencent.mm.sdk.platformtools.z.azj();
    localk.cR(1);
    localk.fxL.fQo = 0;
    localk.fxL.fQs = s.pU();
    localk.fxL.fCd = new rv().bM(cj.ib((String)be.us().get(18)));
    localk.fxL.fDT = a.fxl;
    localk.fxL.fDS = a.fxm;
    localk.fxL.fQv = a.fxn;
    localk.fxL.fQw = cd.aDp();
    localk.fxL.cqr = ce.uZ();
    localk.fxL.fQx = ce.va();
    localk.fxL.fBE = new rv().bM(cj.azP());
    localk.fxL.fQB = paramInt;
    localk.fxL.fQz = al.getContext().getString(n.bwC);
    localk.fxL.fEI = new rw().sn(this.cwX);
    localk.fxL.fBI = be.uv();
    a(paramBoolean, paramString1, paramString2, paramString3);
  }

  private int zL()
  {
    uf localuf = ((com.tencent.mm.protocal.l)this.cmF.wv()).fxM.fBW;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 1)
          return cj.getInt(localwb.fXv, 0);
      }
    }
    return 0;
  }

  public final boolean BW()
  {
    return !cj.A(((com.tencent.mm.protocal.k)this.cmF.wJ()).fxL.fQA.ayh().toByteArray());
  }

  public final String BX()
  {
    return com.tencent.mm.platformtools.an.a(((com.tencent.mm.protocal.l)this.cmF.wv()).fxM.fCc, "");
  }

  public final String BY()
  {
    return ((com.tencent.mm.protocal.l)this.cmF.wv()).fxM.fQV;
  }

  public final String BZ()
  {
    return ((com.tencent.mm.protocal.l)this.cmF.wv()).fxM.fPJ.getString();
  }

  public final int Ca()
  {
    uf localuf = ((com.tencent.mm.protocal.l)this.cmF.wv()).fxM.fBW;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 11)
          return cj.getInt(localwb.fXv, 0);
      }
    }
    return 0;
  }

  public final BindWordingContent Cb()
  {
    uf localuf = ((com.tencent.mm.protocal.l)this.cmF.wv()).fxM.fBW;
    wb localwb;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      do
      {
        if (!localIterator.hasNext())
          break;
        localwb = (wb)localIterator.next();
      }
      while (localwb.fAs != 12);
    }
    for (String str = localwb.fXv; ; str = null)
    {
      if (str != null)
      {
        new b();
        try
        {
          BindWordingContent localBindWordingContent = b.go(str);
          return localBindWordingContent;
        }
        catch (XmlPullParserException localXmlPullParserException)
        {
          return null;
        }
        catch (IOException localIOException)
        {
        }
      }
      return null;
    }
  }

  public final int Cc()
  {
    uf localuf = ((com.tencent.mm.protocal.l)this.cmF.wv()).fxM.fBW;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 13)
          return cj.getInt(localwb.fXv, 0);
      }
    }
    return 0;
  }

  public final String Cd()
  {
    return this.cwX;
  }

  public final String Ce()
  {
    return this.cwY;
  }

  public final String Cf()
  {
    return this.cwZ;
  }

  public final int a(r paramr, com.tencent.mm.n.m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cmF, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt2);
    arrayOfObject1[1] = Integer.valueOf(paramInt3);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAuth", "dkwt onGYNetEnd  errType:%d errCode:%d", arrayOfObject1);
    com.tencent.mm.protocal.l locall = (com.tencent.mm.protocal.l)paramaj.wv();
    com.tencent.mm.a.j localj = new com.tencent.mm.a.j(locall.fxM.fPH);
    boolean bool1 = be.ur().a(localj.longValue(), com.tencent.mm.platformtools.an.a(locall.fxM.fRb));
    Object[] arrayOfObject2 = new Object[5];
    arrayOfObject2[0] = locall.fxM.fEI;
    arrayOfObject2[1] = Integer.valueOf(locall.fxM.fRa);
    if (locall.fxM.fRb == null);
    for (int i = -1; ; i = locall.fxM.fRb.ayg())
    {
      arrayOfObject2[2] = Integer.valueOf(i);
      arrayOfObject2[3] = Long.valueOf(localj.longValue());
      arrayOfObject2[4] = Boolean.valueOf(bool1);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAuth", "dkwt resp user:%s resp.rImpl.getNextAuthType():%d  getWTLoginRspBuff:%d uin:%d parseRet:%b", arrayOfObject2);
      if ((paramInt2 == 0) && (paramInt3 == 0))
        break label503;
      if ((paramInt2 != 4) || (paramInt3 != -301))
        break label314;
      be.a(true, locall.fxM.fBO, locall.fxM.fBP, locall.fxM.fBN);
      Object[] arrayOfObject7 = new Object[2];
      arrayOfObject7[0] = Integer.valueOf(paramInt2);
      arrayOfObject7[1] = Integer.valueOf(paramInt3);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAuth", "dkidc , doscene again old: errType:%d errCode:%d", arrayOfObject7);
      this.crh = (-1 + this.crh);
      if (this.crh > 0)
        break;
      this.cjh.a(3, -1, "", this);
      return;
    }
    a(wM(), this.cjh);
    return;
    label314: if ((paramInt2 == 4) && (paramInt3 == -102))
    {
      int k = paramaj.wJ().awJ().axb();
      Object[] arrayOfObject6 = new Object[1];
      arrayOfObject6[0] = Integer.valueOf(k);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAuth", "dkcert  auth MM_ERR_CERT_EXPIRED  getcert now  old ver:%d", arrayOfObject6);
      be.ut().o(new j(this, k));
      return;
    }
    if ((paramInt2 == 4) && (paramInt3 == -105))
    {
      this.cxc = (1 + this.cxc);
      if (this.cxc > 1)
      {
        this.cjh.a(4, -1, "", this);
        return;
      }
      be.ur().w(localj.longValue());
      aw.r(this.cwX, 2);
      a(false, "", "", "");
      a(wM(), this.cjh);
      return;
    }
    if ((paramInt2 != 4) || ((paramInt3 != -16) && (paramInt3 != -17)))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    label503: if (cj.hX(locall.fxM.fEI.getString()))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAuth", "onGYNetEnd ERROR resp user is null , return false!");
      this.cjh.a(4, -1, "", this);
      return;
    }
    aw.r(this.cwX, locall.fxM.fRa);
    aw.r(locall.fxM.fEI.getString(), locall.fxM.fRa);
    be.ut().azx();
    Object[] arrayOfObject3 = new Object[3];
    arrayOfObject3[0] = com.tencent.mm.a.j.getString(locall.fxM.fAX);
    arrayOfObject3[1] = Thread.currentThread().getName();
    arrayOfObject3[2] = Integer.valueOf(Process.getThreadPriority(Process.myTid()));
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAuth", "dkidc setAccUin Begin uin:%s thread:[%s,%d]", arrayOfObject3);
    com.tencent.mm.compatible.g.k localk = new com.tencent.mm.compatible.g.k();
    be.cs(locall.fxM.fAX);
    Object[] arrayOfObject4 = new Object[4];
    arrayOfObject4[0] = com.tencent.mm.a.j.getString(locall.fxM.fAX);
    arrayOfObject4[1] = Thread.currentThread().getName();
    arrayOfObject4[2] = Integer.valueOf(Process.getThreadPriority(Process.myTid()));
    arrayOfObject4[3] = Long.valueOf(localk.qh());
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAuth", "dkidc setAccUin End: uin:%s thread:[%s,%d] time:%d", arrayOfObject4);
    be.uz().sr().set(3, this.cwY);
    be.uz().sr().set(19, this.cwZ);
    be.uz().sr().set(52, Integer.valueOf(locall.fxM.fQN));
    be.uz();
    com.tencent.mm.model.b.bJ(locall.fxM.fPK);
    be.uz().ss().vD(locall.fxM.fQW);
    Object[] arrayOfObject5 = new Object[1];
    arrayOfObject5[0] = locall.fxM.fQy;
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAuth", "dkrsa setautoauthtick:%s", arrayOfObject5);
    be.us().set(32, "");
    be.uz().a(locall);
    cc localcc = be.uz().sz();
    String str = locall.fxM.fQH.getString();
    boolean bool2;
    e locale;
    if (locall.fxM.fQI == 1)
    {
      bool2 = true;
      localcc.M(str, bool2);
      if (locall.fxM.fPH != 0)
        be.uz().sz().an(new com.tencent.mm.a.j(locall.fxM.fPH) + "@qqim", 3);
      be.a(false, locall.fxM.fBO, locall.fxM.fBP, locall.fxM.fBN);
      be.us().set(1, Integer.valueOf(locall.fxM.fAX));
      al.getContext().getSharedPreferences("system_config_prefs", 0).edit().putInt("default_uin", locall.fxM.fAX).commit();
      be.uz().bZ(be.uz().sr().zz());
      be.uA().d(new cb(new l(this, locall)));
      locale = be.uz().sr();
      if (locall.fxM.fQY == 0)
        break label1281;
    }
    label1281: for (int j = 1; ; j = 0)
    {
      locale.set(57, Integer.valueOf(j));
      if (this.cxb)
      {
        com.tencent.mm.protocal.k localk1 = (com.tencent.mm.protocal.k)paramaj.wJ();
        be.uz().sr().set(2, localk1.fxL.fEI);
        be.uz().sr().set(3, this.cwY);
        be.uz().sr().set(19, this.cwZ);
      }
      be.ut().o(new m(this));
      be.a(locall.fxM.fKt);
      if ((paramInt2 == 0) && (paramInt3 == 0) && (zL() > 0))
        al.getContext().getSharedPreferences(al.azs(), 0).edit().putInt("reg_style_id", zL()).commit();
      be.ut().azz();
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
      bool2 = false;
      break;
    }
  }

  protected final void a(com.tencent.mm.n.z paramz)
  {
  }

  public final int getInputType()
  {
    return ((com.tencent.mm.protocal.k)this.cmF.wJ()).fxL.fQB;
  }

  public final int getType()
  {
    return 380;
  }

  public final void gr(String paramString)
  {
    com.tencent.mm.protocal.k localk = (com.tencent.mm.protocal.k)this.cmF.wJ();
    localk.fxL.fML = new rw().sn(paramString);
    this.cwY = paramString;
    this.cwZ = paramString;
    localk.fxL.fBY = paramString;
    localk.fxL.fQp = paramString;
    localk.fxL.fQq = paramString;
    this.cxb = true;
  }

  protected final int we()
  {
    return 5;
  }

  public final String xn()
  {
    return ((com.tencent.mm.protocal.l)this.cmF.wv()).fxM.fBA;
  }

  public final String zC()
  {
    return ((com.tencent.mm.protocal.l)this.cmF.wv()).fxM.fFm;
  }

  public final int zE()
  {
    uf localuf = ((com.tencent.mm.protocal.l)this.cmF.wv()).fxM.fBW;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 6)
          return cj.getInt(localwb.fXv, 3);
      }
    }
    return 3;
  }

  public final byte[] zR()
  {
    if (!BW())
      return com.tencent.mm.platformtools.an.a(((com.tencent.mm.protocal.l)this.cmF.wv()).fxM.fzx, new byte[0]);
    return be.ur().u(Long.parseLong(((com.tencent.mm.protocal.k)this.cmF.wJ()).fxL.fEI.getString()));
  }

  public final String zS()
  {
    return com.tencent.mm.platformtools.an.a(((com.tencent.mm.protocal.l)this.cmF.wv()).fxM.fMM, "");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.i
 * JD-Core Version:    0.6.2
 */