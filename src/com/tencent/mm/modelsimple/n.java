package com.tencent.mm.modelsimple;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.a.j;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
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
import com.tencent.mm.protocal.bi;
import com.tencent.mm.protocal.k;
import com.tencent.mm.protocal.l;
import com.tencent.mm.protocal.p;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.cd;
import com.tencent.mm.storage.d;
import com.tencent.mm.storage.e;

public final class n extends x
  implements ab
{
  private m cjh;
  private final aj cmF = new u();
  private int crh = 2;
  private String cxh = "";
  private String cxi = "";

  public n(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    k localk = (k)this.cmF.wJ();
    localk.bQ(0);
    localk.fxL.fEI = new rw().sn(paramString1);
    this.cxh = paramString2;
    this.cxi = "";
    localk.fxL.fML = new rw().sn(this.cxh);
    localk.fxL.fBY = this.cxi;
    localk.fxL.fQp = this.cxh;
    localk.fxL.fQq = this.cxi;
    localk.fxL.fQn = new rw().sn(paramString3);
    localk.fxL.fMM = new rw().sn(paramString4);
    localk.fxL.fQr = cj.azR();
    localk.fxL.fBF = com.tencent.mm.sdk.platformtools.z.azj();
    localk.cR(1);
    localk.fxL.fQo = 0;
    localk.fxL.fQs = s.pU();
    localk.fxL.fCc = new rw().sn(paramString5);
    localk.fxL.fCd = new rv().bM(cj.ib((String)be.us().get(18)));
    localk.fxL.fDT = a.fxl;
    localk.fxL.fDS = a.fxm;
    localk.fxL.fQv = a.fxn;
    localk.fxL.fQw = cd.aDp();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneAuthFB", "psw=" + localk.fxL.fML + ", psw2=" + localk.fxL.fBY + ", lang=" + localk.fxL.fBF);
  }

  public final String BY()
  {
    try
    {
      String str = ((l)this.cmF.wv()).fxM.fQV;
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
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
    l locall = (l)paramaj.wv();
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      if ((paramInt2 == 4) && (paramInt3 == -301))
      {
        be.a(true, locall.fxM.fBO, locall.fxM.fBP, locall.fxM.fBN);
        this.crh = (-1 + this.crh);
        if (this.crh <= 0)
        {
          this.cjh.a(3, -1, "", this);
          return;
        }
        a(wM(), this.cjh);
        return;
      }
      if ((paramInt2 == 4) && (paramInt3 == -102))
      {
        int j = paramaj.wJ().awJ().axb();
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(j);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAuthFB", "dkcert  auth MM_ERR_CERT_EXPIRED  getcert now  old ver:%d", arrayOfObject2);
        be.ut().o(new o(this, j));
        return;
      }
      if ((paramInt2 != 4) || ((paramInt3 != -16) && (paramInt3 != -17)))
      {
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
    }
    be.cs(locall.fxM.fAX);
    be.uz().sr().set(3, locall.fxM.fQS);
    be.uz().sr().set(52, Integer.valueOf(locall.fxM.fQN));
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = locall.fxM.fQy;
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneAuthFB", "dkrsa set autoauthticket:%s", arrayOfObject1);
    be.us().set(32, "");
    be.uz();
    b.bJ(locall.fxM.fPK);
    be.uz().ss().vD(locall.fxM.fQW);
    e locale = be.uz().sr();
    int i;
    cc localcc;
    String str;
    if (locall.fxM.fQY != 0)
    {
      i = 1;
      locale.set(57, Integer.valueOf(i));
      be.uz().a(locall);
      localcc = be.uz().sz();
      str = locall.fxM.fQH.getString();
      if (locall.fxM.fQI != 1)
        break label667;
    }
    label667: for (boolean bool = true; ; bool = false)
    {
      localcc.M(str, bool);
      if (locall.fxM.fPH != 0)
        be.uz().sz().an(new j(locall.fxM.fPH) + "@qqim", 3);
      be.a(false, locall.fxM.fBO, locall.fxM.fBP, locall.fxM.fBN);
      be.us().set(1, Integer.valueOf(locall.fxM.fAX));
      al.getContext().getSharedPreferences("system_config_prefs", 0).edit().putInt("default_uin", locall.fxM.fAX).commit();
      be.uz().bZ(be.uz().sr().zz());
      be.uA().d(new cb(new q(this, locall)));
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneAuthFB", "IsAutoReg = " + locall.fxM.fQT);
      be.uz().sr().set(65833, Integer.valueOf(locall.fxM.fQT));
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
      i = 0;
      break;
    }
  }

  protected final void a(com.tencent.mm.n.z paramz)
  {
  }

  public final int getType()
  {
    return 380;
  }

  protected final int we()
  {
    return 3;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.n
 * JD-Core Version:    0.6.2
 */