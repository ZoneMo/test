package com.tencent.mm.modelsimple;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import android.os.Build.VERSION;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.pb;
import com.tencent.mm.protocal.a.pc;
import com.tencent.mm.protocal.a.uf;
import com.tencent.mm.protocal.a.wb;
import com.tencent.mm.protocal.ax;
import com.tencent.mm.protocal.ay;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bi;
import com.tencent.mm.storage.bj;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.d;
import com.tencent.mm.storage.e;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class ad extends x
  implements ab
{
  private m cjh;
  private aj cmF;
  private int crh = 2;
  private final String cxA;
  private final int cxB;
  private final int cxC;
  private boolean cxD = true;
  private boolean cxE = false;
  private final String cxv;
  private final String cxw;
  private final String cxx;
  private final String cxy;
  private final String cxz;

  public ad(String paramString1, String paramString2, String paramString3, int paramInt1, String paramString4, String paramString5, String paramString6, int paramInt2)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneReg", "NetSceneReg: username = " + paramString1 + " nickname = " + paramString3);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneReg", "NetSceneReg: bindUin = " + paramInt1 + "bindEmail = " + paramString4 + " bindMobile = " + paramString5);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneReg", "NetSceneReg: regMode = " + paramInt2 + " ticket: " + paramString6);
    this.cxC = paramInt2;
    this.cmF = new af();
    ax localax = (ax)this.cmF.wJ();
    localax.bQ(0);
    localax.fyv.eBo = paramString1;
    localax.fyv.fBL = cj.hZ(paramString2);
    if (paramInt2 == 4)
    {
      localax.fyv.fBL = paramString6;
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.NetSceneReg", "dkreg rand:" + paramString6 + " reqMd5:" + localax.fyv.fBL);
    }
    localax.fyv.fDe = paramString3;
    localax.fyv.fPH = paramInt1;
    localax.fyv.fRk = paramString4;
    localax.fyv.fRl = paramString5;
    localax.fyv.fFm = paramString6;
    localax.fyv.fMm = paramInt2;
    localax.fyv.fQr = cj.azR();
    localax.fyv.fFk = s.getSimCountryIso();
    localax.fyv.fBF = com.tencent.mm.sdk.platformtools.z.azj();
    localax.fyv.fQo = 0;
    localax.fyv.fRo = 0;
    localax.fyv.fRp = s.getAndroidId();
    localax.fyv.fNA = s.pW();
    localax.fyv.fRq = al.getContext().getSharedPreferences(al.azs(), 0).getString("installreferer", "");
    this.cxv = paramString1;
    this.cxw = paramString2;
    this.cxx = paramString3;
    this.cxy = paramString4;
    this.cxz = paramString5;
    this.cxB = paramInt1;
    this.cxA = "";
    boolean bool;
    if (paramString6 != null)
    {
      int j = paramString6.length();
      bool = false;
      if (j > 0);
    }
    else if (paramString4 != null)
    {
      int i = paramString4.length();
      bool = false;
      if (i > 0);
    }
    else
    {
      bool = true;
    }
    this.cxD = bool;
    localax.fyv.fBI = be.uv();
  }

  public ad(String paramString1, String paramString2, String paramString3, int paramInt1, String paramString4, String paramString5, String paramString6, int paramInt2, String paramString7, String paramString8, String paramString9, boolean paramBoolean1, boolean paramBoolean2)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneReg", "NetSceneReg: username = " + paramString1 + " nickname = " + paramString3);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneReg", "NetSceneReg: bindUin = " + paramInt1 + "bindEmail = " + paramString4 + " bindMobile = " + paramString5);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneReg", "NetSceneReg: regMode = " + paramInt2 + " ticket: " + paramString6);
    this.cxC = paramInt2;
    this.cmF = new af();
    ax localax = (ax)this.cmF.wJ();
    localax.bQ(0);
    localax.fyv.eBo = paramString1;
    localax.fyv.fBL = cj.hZ(paramString2);
    if (paramInt2 == 4)
    {
      localax.fyv.fBL = paramString6;
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.NetSceneReg", "dkreg rand:" + paramString6 + " reqMd5:" + localax.fyv.fBL);
    }
    localax.fyv.fDe = paramString3;
    localax.fyv.fPH = paramInt1;
    localax.fyv.fRk = paramString4;
    localax.fyv.fRl = paramString5;
    localax.fyv.fFm = paramString6;
    localax.fyv.fMm = paramInt2;
    localax.fyv.fQr = cj.azR();
    localax.fyv.fFk = s.getSimCountryIso();
    localax.fyv.fBF = com.tencent.mm.sdk.platformtools.z.azj();
    localax.fyv.fQo = 0;
    localax.fyv.cqt = paramString7;
    localax.fyv.fMl = paramString9;
    localax.fyv.fMk = paramString8;
    pb localpb1 = localax.fyv;
    int i;
    int j;
    if (paramBoolean1)
    {
      i = 1;
      localpb1.fBB = i;
      pb localpb2 = localax.fyv;
      if (!paramBoolean2)
        break label564;
      j = 1;
      label416: localpb2.fRn = j;
      localax.fyv.fBI = be.uv();
      localax.fyv.fRp = s.getAndroidId();
      localax.fyv.fNA = s.pW();
      localax.fyv.fRq = al.getContext().getSharedPreferences(al.azs(), 0).getString("installreferer", "");
      this.cxv = paramString1;
      this.cxw = paramString2;
      this.cxx = paramString3;
      this.cxy = paramString4;
      this.cxz = paramString5;
      this.cxB = paramInt1;
      this.cxA = paramString7;
      if (((paramString6 != null) && (paramString6.length() > 0)) || ((paramString4 != null) && (paramString4.length() > 0)))
        break label570;
    }
    label564: label570: for (boolean bool = true; ; bool = false)
    {
      this.cxD = bool;
      return;
      i = 0;
      break;
      j = 0;
      break label416;
    }
  }

  private int zL()
  {
    uf localuf = ((ay)this.cmF.wv()).fyw.fBW;
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

  public final boolean Cw()
  {
    return this.cxE;
  }

  public final String Cx()
  {
    return ((ay)this.cmF.wv()).fyw.fRw;
  }

  public final String Cy()
  {
    uf localuf = ((ay)this.cmF.wv()).fyw.fBW;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 2)
          return localwb.fXv;
      }
    }
    return "";
  }

  public final int Cz()
  {
    uf localuf = ((ay)this.cmF.wv()).fyw.fBW;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 3)
          return cj.getInt(localwb.fXv, 2);
      }
    }
    return 2;
  }

  public final int a(r paramr, m paramm)
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
    ay localay = (ay)paramaj.wv();
    if ((paramInt2 == 4) && (paramInt3 == -301))
    {
      be.a(true, localay.fyw.fBO, localay.fyw.fBP, localay.fyw.fBN);
      this.crh = (-1 + this.crh);
      if (this.crh <= 0)
      {
        this.cjh.a(3, -1, "", this);
        return;
      }
      a(wM(), this.cjh);
      return;
    }
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    ax localax = (ax)paramaj.wJ();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneReg", "dkreg: pass:" + localay.fyw.fQS + " regtype:" + localay.fyw.fQN + " mode:" + localax.fyv.fMm);
    if ((localay.fyw.fAX != 0) && (!this.cxD))
    {
      be.cs(localay.fyw.fAX);
      if (localax.fyv.fMm != 4)
        break label819;
      be.uz().sr().set(2, localax.fyv.eBo);
      be.uz().sr().set(3, localay.fyw.fQS);
      be.uz().sr().set(19, localay.fyw.fQS);
      be.uz().sr().set(16, Integer.valueOf(1));
      be.uz().sr().set(52, Integer.valueOf(localay.fyw.fQN));
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localay.fyw.fQy;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneReg", "dkrsa setautoauthtick:%s", arrayOfObject);
      be.us().set(32, "");
      if ((this.cxv != null) && (this.cxv.length() > 0) && (this.cxC != 1))
        localay.fyw.eBo = this.cxv;
      localay.fyw.fRk = this.cxy;
      localay.fyw.fzr = 0;
      be.uz().a(localay, this.cxA, this.cxB, this.cxx, this.cxz);
      be.uz().sz().an(localay.fyw.fRu, 2);
      if (this.cxB != 0)
        be.uz().sz().an(this.cxB + "@qqim", 3);
      be.a(false, localay.fyw.fBO, localay.fyw.fBP, localay.fyw.fBN);
      be.us().set(1, Integer.valueOf(localay.fyw.fAX));
      al.getContext().getSharedPreferences("system_config_prefs", 0).edit().putInt("default_uin", localay.fyw.fAX).commit();
      be.uz().bZ(be.uz().sr().zz());
      be.uA().d(new cb(new ae(this, localay)));
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneReg", "resp return flag" + localay.fyw.fRv);
      if ((0x1 & localay.fyw.fRv) == 0)
        break label857;
    }
    label819: label857: for (boolean bool = true; ; bool = false)
    {
      this.cxE = bool;
      LinkedList localLinkedList = new LinkedList();
      localLinkedList.add(new bj(21, "android-" + Build.VERSION.SDK_INT + "-" + Build.MODEL));
      be.uz().st().a(new bi(localLinkedList));
      if ((paramInt2 == 0) && (paramInt3 == 0) && (zL() > 0))
        al.getContext().getSharedPreferences(al.azs(), 0).edit().putInt("reg_style_id", zL()).commit();
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
      be.uz().sr().set(3, cj.hZ(this.cxw));
      be.uz().sr().set(19, cj.ia(this.cxw));
      break;
    }
  }

  protected final void a(com.tencent.mm.n.z paramz)
  {
  }

  public final void dT(int paramInt)
  {
    ((ax)this.cmF.wJ()).fyv.fRo = paramInt;
  }

  public final int getType()
  {
    return 126;
  }

  protected final int we()
  {
    return 3;
  }

  public final byte[] zR()
  {
    return an.a(((ay)this.cmF.wv()).fyw.fMn, new byte[0]);
  }

  public final String zS()
  {
    return ((ay)this.cmF.wv()).fyw.fMk;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.ad
 * JD-Core Version:    0.6.2
 */