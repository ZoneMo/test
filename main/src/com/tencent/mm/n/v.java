package com.tencent.mm.n;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.mm.a.j;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.model.be;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.n;
import com.tencent.mm.pointers.PString;
import com.tencent.mm.protocal.a;
import com.tencent.mm.protocal.a.ot;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.k;
import com.tencent.mm.protocal.p;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.storage.cd;
import com.tencent.mm.storage.d;
import junit.framework.Assert;

public abstract class v
  implements aj
{
  private p clR;

  private static void a(p paramp)
  {
    paramp.ex(s.pV());
    paramp.ew(a.fxk);
    paramp.cQ(a.fxr);
    e locale = f.wA();
    if (locale == null);
    for (int i = 0; ; i = locale.sd())
    {
      paramp.bQ(i);
      return;
    }
  }

  public final aj a(n paramn, PString paramPString)
  {
    aa.d("MicroMsg.MMReqRespBase", "build rr for autoauth, accInfo=" + paramn);
    Assert.assertNotNull("acc info should not be null", paramn);
    u localu = new u();
    k localk = (k)localu.wJ();
    a(localk);
    boolean bool1 = ((Boolean)f.c(256, Boolean.valueOf(false))).booleanValue();
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Boolean.valueOf(bool1);
    aa.e("MicroMsg.MMReqRespBase", "dkwt Read forceManual :%b", arrayOfObject1);
    if (bool1)
      localk.cR(1);
    e locale;
    while (true)
    {
      localk.fxL.fQo = 0;
      locale = f.wA();
      if (locale != null)
        break;
      aa.e("MicroMsg.MMReqRespBase", "get auth rr failed, no available acc");
      return localu;
      localk.cR(2);
    }
    if (paramn.sd() != locale.sd())
      aa.w("MicroMsg.MMReqRespBase", "different uin while building auth rr");
    String str1 = cj.hW((String)locale.cl(3));
    String str2 = cj.hW((String)locale.cl(2));
    int i = aw.eA(str2);
    j localj = new j(cj.a((Integer)locale.cl(9), 0));
    aw localaw = f.wB();
    long l;
    boolean bool3;
    if ((i == 1) && (localj.longValue() != 0L) && (localaw != null))
    {
      l = localj.longValue();
      if (localk.xe() == 1)
        bool3 = true;
    }
    for (byte[] arrayOfByte = localaw.a(l, str1, bool3); ; arrayOfByte = null)
    {
      label401: String str3;
      label645: Object[] arrayOfObject2;
      boolean bool2;
      if (cj.A(arrayOfByte))
      {
        localk.fxL.fEI = new rw().sn(str2);
        localk.fxL.fML = new rw().sn(str1);
        localk.fxL.fBY = cj.hW((String)locale.cl(19));
        localk.fxL.fQp = cj.hW((String)locale.cl(32));
        localk.fxL.fQq = cj.hW((String)locale.cl(33));
        localk.fxL.fQr = cj.azR();
        localk.fxL.fBF = z.azj();
        localk.fxL.fQs = s.pU();
        localk.fxL.fMM = new rw();
        localk.fxL.fQn = new rw();
        localk.fxL.fCc = new rw();
        localk.fxL.fCd = new rv().bM(cj.ib((String)locale.cl(47)));
        localk.fxL.fDT = a.fxl;
        localk.fxL.fDS = a.fxm;
        localk.fxL.fQv = a.fxn;
        localk.fxL.fQw = cd.aDp();
        paramn.f(str2, localk.fxL.fML.getString(), localk.fxL.fBY);
        localk.fxL.cqr = cj.bF(al.getContext());
        ot localot = localk.fxL;
        paramn.sd();
        str3 = (String)be.us().get(32);
        if (cj.hX(str3))
          break label882;
        localot.fQy = str3;
        arrayOfObject2 = new Object[8];
        arrayOfObject2[0] = str2;
        arrayOfObject2[1] = Integer.valueOf(i);
        if (localaw == null)
          break label910;
        bool2 = true;
        label682: arrayOfObject2[2] = Boolean.valueOf(bool2);
        arrayOfObject2[3] = localj;
        if (arrayOfByte != null)
          break label916;
      }
      label910: label916: for (int j = -1; ; j = arrayOfByte.length)
      {
        arrayOfObject2[4] = Integer.valueOf(j);
        arrayOfObject2[5] = localk.fxL.fQy;
        arrayOfObject2[6] = localk.fxL.fQr;
        arrayOfObject2[7] = localk.fxL.fBF;
        aa.d("MicroMsg.MMReqRespBase", "dkwt autoauth username :%s nextauthtype:%d wtloginMgr:%b qq:%s loginBuf:%d aat:%s zone:%s lan:%s", arrayOfObject2);
        paramPString.value = localk.fxL.fQy;
        return localu;
        bool3 = false;
        break;
        localk.fxL.fEI = new rw().sn(localj.toString());
        localk.fxL.fQA = new rv().bM(arrayOfByte);
        localk.fxL.fML = new rw().sn("");
        localk.fxL.fBY = "";
        localk.fxL.fQp = "";
        localk.fxL.fQq = "";
        break label401;
        label882: str3 = al.getContext().getSharedPreferences("ticket_prefs", l.qi()).getString("_auth_ticket", "");
        break label645;
        bool2 = false;
        break label682;
      }
    }
  }

  public final p wJ()
  {
    if (this.clR == null)
    {
      this.clR = wu();
      a(this.clR);
    }
    return this.clR;
  }

  public int wK()
  {
    return 0;
  }

  protected abstract p wu();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.v
 * JD-Core Version:    0.6.2
 */