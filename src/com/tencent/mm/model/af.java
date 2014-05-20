package com.tencent.mm.model;

import android.content.Context;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.o;

public final class af
{
  private b cia;
  private an cib;

  public af(b paramb, an paraman)
  {
    this.cia = paramb;
    this.cib = paraman;
  }

  private int a(boolean paramBoolean1, String paramString, boolean paramBoolean2)
  {
    int i = 3;
    i locali = this.cia.su().tO(paramString);
    if (locali == null)
      locali = new i();
    if (locali.rj() == 0)
    {
      locali.setUsername(paramString);
      locali.qI();
      localContext = al.getContext();
      localao = this.cib.a(paramString, localContext);
      locali.bt(localao.cie);
      locali.bv(localao.cid);
      locali.bw(localao.cif);
      if (paramBoolean2)
        i = 4;
      locali.bU(i);
      locali.qP();
      this.cia.su().B(locali);
      i = 1;
    }
    while (!paramBoolean1)
    {
      Context localContext;
      ao localao;
      return i;
    }
    locali.qP();
    this.cia.su().a(paramString, locali);
    return 2;
  }

  public static void q(i parami)
  {
    if (parami == null)
      parami = new i();
    if (parami.rj() == 0)
    {
      parami.setUsername("filehelper");
      if (be.uz().sx().tZ(parami.getUsername()) != null)
        break label62;
      parami.qJ();
    }
    while (true)
    {
      parami.bU(3);
      be.uz().su().A(parami);
      return;
      label62: parami.qI();
    }
  }

  public final void O(boolean paramBoolean)
  {
    if (!paramBoolean)
      return;
    q(this.cia.su().tO("filehelper"));
    String str = v.th();
    i locali6;
    label75: i locali2;
    label404: i locali3;
    label556: i locali5;
    if (!cj.hX(str))
    {
      locali6 = this.cia.su().tO(str);
      if (locali6.rj() == 0)
      {
        locali6.setUsername(str);
        locali6.qI();
        be.uz().su().B(locali6);
      }
    }
    else
    {
      a(paramBoolean, "qqmail", false);
      if (1 == a(paramBoolean, "qqsync", false))
      {
        this.cia.sr().set(65792, Boolean.valueOf(true));
        this.cia.sr().set(65794, Long.valueOf(cj.FC() - 1123200L));
      }
      a(paramBoolean, "floatbottle", false);
      a(paramBoolean, "shakeapp", false);
      a(paramBoolean, "lbsapp", false);
      a(paramBoolean, "medianote", false);
      a(paramBoolean, "newsapp", true);
      a(paramBoolean, "blogapp", true);
      a(paramBoolean, "facebookapp", true);
      a(paramBoolean, "qqfriend", false);
      a(paramBoolean, "masssendapp", true);
      a(paramBoolean, "feedsapp", true);
      a(paramBoolean, "tmessage", false);
      a(paramBoolean, "qmessage", false);
      i locali1 = this.cia.su().tO("voip");
      locali2 = this.cia.su().tO("voipapp");
      if (locali2 == null)
        locali2 = new i();
      if ((locali1 != null) && (locali1.rj() != 0))
        this.cia.su().tU("voip");
      if (locali2.rj() != 0)
        break label802;
      locali2.setUsername("voipapp");
      locali2.qI();
      Context localContext3 = al.getContext();
      ao localao3 = this.cib.a("voipapp", localContext3);
      locali2.bt(localao3.cie);
      locali2.bv(localao3.cid);
      locali2.bw(localao3.cif);
      locali2.bU(4);
      locali2.qP();
      this.cia.su().C(locali2);
      locali3 = this.cia.su().tO("officialaccounts");
      if (locali3 == null)
        locali3 = new i();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Boolean.valueOf(paramBoolean);
      arrayOfObject[1] = Integer.valueOf(locali3.rj());
      aa.d("MicroMsg.HardCodeHelper", "hardcodeOfficialAccounts:update[%B], contactID[%d]", arrayOfObject);
      if (locali3.rj() != 0)
        break label829;
      locali3.setUsername("officialaccounts");
      locali3.qJ();
      Context localContext2 = al.getContext();
      ao localao2 = this.cib.a("officialaccounts", localContext2);
      locali3.bt(localao2.cie);
      locali3.bv(localao2.cid);
      locali3.bw(localao2.cif);
      locali3.bU(3);
      this.cia.su().C(locali3);
      i locali4 = this.cia.su().tO("voipaudio");
      locali5 = this.cia.su().tO("voicevoipapp");
      if (locali5 == null)
        locali5 = new i();
      if ((locali4 != null) && (locali4.rj() != 0))
        this.cia.su().tU("voipaudio");
      if (locali5.rj() != 0)
        break label863;
      locali5.setUsername("voicevoipapp");
      locali5.qI();
      Context localContext1 = al.getContext();
      ao localao1 = this.cib.a("voicevoipapp", localContext1);
      locali5.bt(localao1.cie);
      locali5.bv(localao1.cid);
      locali5.bw(localao1.cif);
      locali5.bU(4);
      locali5.qP();
      this.cia.su().C(locali5);
    }
    while (true)
    {
      a(paramBoolean, "voiceinputapp", false);
      a(paramBoolean, "googlecontact", false);
      a(paramBoolean, "linkedinplugin", false);
      if (!paramBoolean)
        break;
      be.uz().sx().tX("Weixin");
      be.uz().su().tU("Weixin");
      return;
      if (locali6.rb())
        break label75;
      locali6.qI();
      be.uz().su().a(str, locali6);
      break label75;
      label802: if (!paramBoolean)
        break label404;
      locali2.qP();
      this.cia.su().a("voipapp", locali2);
      break label404;
      label829: if (!paramBoolean)
        break label556;
      aa.i("MicroMsg.HardCodeHelper", "do update hardcode official accounts");
      locali3.qJ();
      this.cia.su().a("officialaccounts", locali3);
      break label556;
      label863: if (paramBoolean)
      {
        locali5.qP();
        this.cia.su().a("voicevoipapp", locali5);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.af
 * JD-Core Version:    0.6.2
 */