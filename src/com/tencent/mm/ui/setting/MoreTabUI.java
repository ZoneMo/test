package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.tencent.mm.ab.j;
import com.tencent.mm.i.c;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.base.preference.IconPreference;
import com.tencent.mm.ui.base.preference.Preference;

public class MoreTabUI extends com.tencent.mm.ui.b
  implements ar
{
  private com.tencent.mm.ui.base.preference.n cIG;
  private c hdT = new m(this);

  private void aLX()
  {
    boolean bool1;
    boolean bool2;
    IconPreference localIconPreference;
    if (com.tencent.mm.ak.a.qc("emoji"))
    {
      com.tencent.mm.ak.a.avr();
      this.cIG.O("settings_emoji_store", false);
      bool1 = com.tencent.mm.i.i.rX().x(262147, 266244);
      bool2 = com.tencent.mm.i.i.rX().x(262149, 266244);
      localIconPreference = (IconPreference)this.cIG.wn("settings_emoji_store");
      if (localIconPreference != null);
    }
    else
    {
      this.cIG.O("settings_emoji_store", true);
      return;
    }
    if (bool1)
    {
      localIconPreference.np(0);
      localIconPreference.aq(getString(2131167730), 2130838937);
      return;
    }
    if (bool2)
    {
      localIconPreference.np(0);
      localIconPreference.aq(getString(2131167731), 2130838937);
      return;
    }
    localIconPreference.np(8);
    localIconPreference.aq("", -1);
  }

  private void aMf()
  {
    if (!com.tencent.mm.ak.a.qc("sns"))
      this.cIG.O("settings_my_album", true);
    while (true)
    {
      return;
      this.cIG.O("settings_my_album", false);
      Preference localPreference = this.cIG.wn("settings_my_album");
      if (localPreference != null)
      {
        String str = (String)be.uz().sr().get(2);
        if (aq.apz() != null);
        for (int i = aq.apz().op(str); i > 0; i = 0)
        {
          Resources localResources = getResources();
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(i);
          localPreference.setSummary(localResources.getQuantityString(2131230750, i, arrayOfObject));
          return;
        }
      }
    }
  }

  private void aMg()
  {
    this.cIG.O("more_setting", false);
    IconPreference localIconPreference = (IconPreference)this.cIG.wn("more_setting");
    if (localIconPreference != null)
    {
      if (!com.tencent.mm.i.i.rX().x(262145, 266242))
        break label94;
      localIconPreference.np(0);
      localIconPreference.aq(getString(2131167730), 2130838937);
    }
    while (true)
    {
      if (((Integer)be.uz().sr().get(9)).intValue() != 0)
      {
        if (com.tencent.mm.model.v.to())
          break;
        localIconPreference.setSummary(2131167205);
      }
      return;
      label94: localIconPreference.np(8);
      localIconPreference.aq("", -1);
    }
    localIconPreference.setSummary("");
  }

  private void aMh()
  {
    boolean bool1 = com.tencent.mm.model.v.tp();
    aa.d("MicroMsg.MoreTabUI", "wallet status: is open" + bool1);
    com.tencent.mm.ui.base.preference.n localn = this.cIG;
    if (!bool1);
    for (boolean bool2 = true; ; bool2 = false)
    {
      localn.O("settings_mm_wallet", bool2);
      aIj().notifyDataSetChanged();
      return;
    }
  }

  private void aMi()
  {
    int i = au.a((Integer)be.uz().sr().get(204820), 0) + au.a((Integer)be.uz().sr().get(204817), 0);
    boolean bool1 = com.tencent.mm.i.i.rX().x(262148, 266248);
    boolean bool2 = com.tencent.mm.i.i.rX().cc(266248);
    IconPreference localIconPreference = (IconPreference)this.cIG.wn("settings_mm_wallet");
    if (localIconPreference == null)
      return;
    aa.d("MicroMsg.MoreTabUI", "isShowNew : " + bool1);
    aa.d("MicroMsg.MoreTabUI", "isShowDot : " + bool2);
    if (bool1)
    {
      localIconPreference.np(0);
      localIconPreference.aq(getString(2131167730), 2130838937);
      return;
    }
    if (i > 99)
    {
      localIconPreference.np(0);
      localIconPreference.aq(getString(2131169190), 2130839580);
      return;
    }
    if (i > 0)
    {
      localIconPreference.np(0);
      localIconPreference.aq(String.valueOf(i), 2130839580);
      return;
    }
    if (bool2)
    {
      localIconPreference.np(0);
      localIconPreference.aq("", 2130839581);
      return;
    }
    localIconPreference.aq("", -1);
    localIconPreference.np(8);
  }

  protected final void FR()
  {
    mn(2131165585);
  }

  public final int Gc()
  {
    return 2131034156;
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    int i = au.U(paramObject);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Integer.valueOf(i);
    arrayOfObject1[2] = paramao;
    aa.e("MicroMsg.MoreTabUI", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
    if ((paramao != be.uz().sr()) || (i <= 0))
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = paramao;
      aa.b("MicroMsg.MoreTabUI", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
    }
    do
    {
      return;
      if ((204817 == i) || (204820 == i))
      {
        aMi();
        return;
      }
    }
    while (40 != i);
    aMh();
  }

  protected final void aDG()
  {
    mn(2131165585);
    this.cIG = aIj();
  }

  protected final void aDH()
  {
    this.cIG = aIj();
    be.uz().sr().a(this);
    com.tencent.mm.i.i.rX().a(this.hdT);
    this.cIG.O("more_tab_setting_personal_info", false);
    AccountInfoPreference localAccountInfoPreference = (AccountInfoPreference)aIj().wn("more_tab_setting_personal_info");
    String str1 = com.tencent.mm.model.v.ti();
    String str3;
    if (au.hX(str1))
    {
      str3 = com.tencent.mm.model.v.th();
      if (com.tencent.mm.storage.i.tD(str3))
      {
        localAccountInfoPreference.setAccountName(null);
        localAccountInfoPreference.mJ(com.tencent.mm.model.v.th());
        String str2 = com.tencent.mm.model.v.tj();
        if (au.hX(str2))
          str2 = com.tencent.mm.model.v.th();
        localAccountInfoPreference.a(com.tencent.mm.ao.b.e(aal(), str2, -1));
        aMf();
        aLX();
        aMg();
        if (com.tencent.mm.ak.a.qc("favorite"))
          break label238;
        this.cIG.O("settings_mm_favorite", true);
      }
    }
    while (true)
    {
      aMi();
      aMh();
      this.cIG.notifyDataSetChanged();
      View localView = findViewById(2131363964);
      if ((localView != null) && (localView.getVisibility() != 8))
        new Handler(Looper.getMainLooper()).post(new n(this, localView));
      return;
      localAccountInfoPreference.setAccountName(str3);
      break;
      localAccountInfoPreference.setAccountName(str1);
      break;
      label238: this.cIG.O("settings_mm_favorite", false);
    }
  }

  protected final void aDI()
  {
  }

  protected final void aDJ()
  {
    com.tencent.mm.i.i.rX().b(this.hdT);
    be.uz().sr().b(this);
  }

  protected final void aDK()
  {
  }

  protected final void aDL()
  {
  }

  public final void aDN()
  {
    if (this.cIG != null)
      this.cIG.removeAll();
    arP();
  }

  public final void aDO()
  {
    if (this.cIG != null)
    {
      this.cIG.removeAll();
      this.cIG.addPreferencesFromResource(2131034156);
    }
    aIo();
  }

  public final void aDQ()
  {
  }

  protected final boolean aFq()
  {
    return true;
  }

  public final boolean f(Preference paramPreference)
  {
    if (paramPreference.getKey().equals("more_tab_setting_personal_info"))
    {
      startActivity(new Intent(aal(), SettingsPersonalInfoUI.class));
      return true;
    }
    if (paramPreference.getKey().equals("settings_mm_wallet"))
    {
      com.tencent.mm.plugin.d.c.m.dZN.j(10958, "9");
      com.tencent.mm.ak.a.b(aal(), "mall", ".ui.MallIndexUI", new Intent());
      com.tencent.mm.i.i.rX().y(262148, 266248);
      if (be.uz().isSDCardAvailable())
      {
        j localj = new j(11);
        be.uA().d(localj);
      }
      return true;
    }
    if (paramPreference.getKey().equals("settings_my_album"))
    {
      if (!be.uz().isSDCardAvailable())
      {
        dn.bW(aal());
        return true;
      }
      String str = (String)be.uz().sr().get(2);
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("sns_userName", str);
      localIntent2.setFlags(536870912);
      localIntent2.addFlags(67108864);
      int i = au.a((Integer)be.uz().sr().get(68389), 0);
      be.uz().sr().set(68389, Integer.valueOf(i + 1));
      com.tencent.mm.ak.a.b(aal(), "sns", ".ui.SnsUserUI", localIntent2);
      return true;
    }
    if (paramPreference.getKey().equals("settings_mm_favorite"))
    {
      com.tencent.mm.plugin.d.c.m.dZN.j(10958, "8");
      com.tencent.mm.ak.a.l(aal(), "favorite", ".ui.FavoriteIndexUI");
      return true;
    }
    if (paramPreference.getKey().equals("settings_emoji_store"))
    {
      com.tencent.mm.plugin.d.c.m.dZN.j(10958, "7");
      com.tencent.mm.i.i.rX().y(262147, 266244);
      com.tencent.mm.i.i.rX().y(262149, 266244);
      Intent localIntent1 = new Intent();
      localIntent1.putExtra("preceding_scence", 2);
      com.tencent.mm.ak.a.b(aal(), "emoji", ".ui.EmojiStoreUI", localIntent1);
      return true;
    }
    if (paramPreference.getKey().equals("more_setting"))
    {
      com.tencent.mm.i.i.rX().y(262145, 266242);
      startActivity(new Intent(aal(), SettingsUI.class));
      return true;
    }
    return false;
  }

  public final void onActivityCreated(Bundle paramBundle)
  {
    aa.i("MicroMsg.MoreTabUI", "onActivityCreated");
    super.onActivityCreated(paramBundle);
    this.cIG = aIj();
    this.cIG.O("more_setting", true);
    this.cIG.O("settings_emoji_store", true);
    this.cIG.O("settings_mm_wallet", true);
    this.cIG.O("settings_mm_favorite", true);
    this.cIG.O("settings_my_album", true);
    this.cIG.O("more_tab_setting_personal_info", true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.MoreTabUI
 * JD-Core Version:    0.6.2
 */