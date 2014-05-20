package com.tencent.mm.ui.setting;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.tencent.mm.booter.al;
import com.tencent.mm.c.a.dg;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.i.c;
import com.tencent.mm.i.i;
import com.tencent.mm.m.af;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.model.k;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.am;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.storage.d;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.preference.IconPreference;
import com.tencent.mm.ui.base.preference.IconSwitchKeyValuePreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.SwitchKeyValuePreference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;
import com.tencent.mm.ui.tools.CropImageNewUI;
import com.tencent.mm.ui.tools.WebViewUI;
import com.tencent.mm.ui.tools.h;

public class SettingsUI extends MMPreference
  implements ar
{
  private n cIG;
  private com.tencent.mm.n.m cyn = null;
  private ProgressDialog ffa = null;
  private com.tencent.mm.n.m gmb = null;
  private c hdT = new eg(this);
  private ay hex;
  private PersonalPreference hgj = null;
  private Dialog hgk = null;

  private void aMD()
  {
    IconSwitchKeyValuePreference localIconSwitchKeyValuePreference = (IconSwitchKeyValuePreference)this.cIG.wn("settings_account_info");
    if (localIconSwitchKeyValuePreference == null)
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SettingsUI", "safedevicesate preference is null");
    while (((Integer)be.uz().sr().get(9)).intValue() == 0)
      return;
    if (v.to())
    {
      localIconSwitchKeyValuePreference.setSummary(2131167203);
      localIconSwitchKeyValuePreference.ns(1);
      return;
    }
    localIconSwitchKeyValuePreference.setSummary(2131167204);
    localIconSwitchKeyValuePreference.ns(2);
  }

  private void aME()
  {
    com.tencent.mm.modelfriend.aa localaa = com.tencent.mm.modelfriend.z.zp();
    SwitchKeyValuePreference localSwitchKeyValuePreference = (SwitchKeyValuePreference)this.cIG.wn("settings_bind_mobile");
    boolean bool;
    if (localSwitchKeyValuePreference != null)
    {
      if ((localaa != com.tencent.mm.modelfriend.aa.crc) && (localaa != com.tencent.mm.modelfriend.aa.crd))
        break label69;
      bool = true;
      localSwitchKeyValuePreference.dD(bool);
      if ((localaa != com.tencent.mm.modelfriend.aa.crc) && (localaa != com.tencent.mm.modelfriend.aa.crd))
        break label74;
    }
    label69: label74: for (int i = 2131165861; ; i = 2131165862)
    {
      localSwitchKeyValuePreference.setSummary(i);
      return;
      bool = false;
      break;
    }
  }

  private void aMF()
  {
    al.oR();
    be.uz().sr().b(this);
    dg localdg = new dg();
    localdg.bOn.status = 0;
    localdg.bOn.bOo = 0;
    com.tencent.mm.sdk.b.a.ayH().f(localdg);
    am.sF("show_whatsnew");
    getSharedPreferences("system_config_prefs", l.qi()).edit().putBoolean("settings_fully_exit", true).commit();
    LauncherUI localLauncherUI = LauncherUI.aEA();
    if (localLauncherUI != null)
      localLauncherUI.finish();
    Intent localIntent = new Intent(this, LauncherUI.class);
    localIntent.addFlags(67108864);
    localIntent.putExtra("Intro_Switch", true);
    aal().startActivity(localIntent);
    com.tencent.mm.modelsimple.f.U(this);
    finish();
  }

  private void aMf()
  {
    IconPreference localIconPreference = (IconPreference)this.cIG.wn("settings_about_micromsg");
    boolean bool1 = au.a(Boolean.valueOf(i.rX().x(262146, 266243)), false);
    boolean bool2 = au.a(Boolean.valueOf(i.rX().x(262145, 266243)), false);
    if ((bool1) || (bool2))
    {
      localIconPreference.np(0);
      localIconPreference.aq(getString(2131167730), 2130838937);
      return;
    }
    localIconPreference.aq("", -1);
    localIconPreference.np(8);
  }

  protected final void FR()
  {
    mn(2131165818);
    this.cIG = aIj();
    Preference localPreference = this.cIG.wn("settings_push_software");
    if (localPreference != null)
      this.cIG.c(localPreference);
    a(new el(this));
    new em(this);
    aME();
    aMf();
    this.cIG.O("settings_traffic_statistic", com.tencent.mm.ak.a.avr());
  }

  public final int Gc()
  {
    return 2131034171;
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    int i = au.U(paramObject);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Integer.valueOf(i);
    arrayOfObject1[2] = paramao;
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SettingsUI", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
    if ((paramao != be.uz().sr()) || (i <= 0))
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = paramao;
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.SettingsUI", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
    }
    do
    {
      return;
      if (4 == i)
      {
        be.uz().sr().get(2);
        be.uz().sr().get(4);
      }
      if (6 == i)
      {
        aME();
        return;
      }
    }
    while (64 != i);
    aMD();
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str1 = paramPreference.getKey();
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.SettingsUI", str1 + " item has been clicked!");
    if ("settings_account_info".equals(str1))
    {
      e(SettingsAccountInfoUI.class);
      return true;
    }
    if ("settings_account".equals(str1))
    {
      aal().startActivity(new Intent(this, SettingsPersonalInfoUI.class));
      return true;
    }
    if (str1.equals("settings_bind_mobile"))
    {
      MMWizardActivity.j(this, new Intent(this, BindMContactIntroUI.class));
      return true;
    }
    if (str1.equals("settings_about_privacy"))
    {
      startActivity(new Intent(this, SettingsPrivacyUI.class));
      return true;
    }
    if (str1.equals("settings_about_system"))
    {
      startActivity(new Intent(this, SettingsAboutSystemUI.class));
      return true;
    }
    if (str1.equals("settings_push_software"))
    {
      String str3 = au.hW((String)be.uz().sr().get(12308));
      Intent localIntent = new Intent();
      localIntent.putExtra("title", getString(2131165904));
      localIntent.putExtra("rawUrl", str3);
      localIntent.putExtra("showShare", false);
      localIntent.setClass(this, WebViewUI.class);
      aal().startActivity(localIntent);
      return true;
    }
    if (str1.equals("settings_traffic_statistic"))
    {
      startActivity(new Intent(this, SettingsNetStatUI.class));
      return true;
    }
    if (str1.equals("settings_about_micromsg"))
    {
      i.rX().y(262145, 266243);
      i.rX().y(262146, 266243);
      aal().startActivity(new Intent(this, SettingsAboutMicroMsgUI.class));
      new Handler().postDelayed(new en(this), 100L);
      return true;
    }
    if (str1.equals("settings_logout"))
    {
      com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(1);
      localm.d(11053, arrayOfObject3);
      com.tencent.mm.ui.base.aa localaa = new com.tencent.mm.ui.base.aa(aal());
      View localView = View.inflate(aal(), 2130903398, null);
      localView.findViewById(2131362930).setOnClickListener(new eo(this));
      localView.findViewById(2131362929).setOnClickListener(new et(this));
      localaa.ai(localView);
      this.hgk = localaa.aGI();
      this.hgk.show();
      return true;
    }
    if (str1.equals("settings_like_facebook"))
    {
      int j = au.c((Integer)be.us().get(1));
      String str2 = com.tencent.mm.sdk.platformtools.z.azi();
      StringBuilder localStringBuilder = new StringBuilder();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(j);
      startActivity(new Intent("android.intent.action.VIEW", Uri.parse(getString(2131165998, arrayOfObject2) + "&countrycode=" + str2.toUpperCase())));
      return true;
    }
    if (str1.equals("settings_follow_twitter"))
    {
      int i = au.c((Integer)be.us().get(1));
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i);
      startActivity(new Intent("android.intent.action.VIEW", Uri.parse(getString(2131165997, arrayOfObject1))));
      return true;
    }
    if (str1.equals("settings_notification_preference"))
    {
      startActivity(new Intent(this, SettingsNotificationUI.class));
      return true;
    }
    if (str1.equals("settings_emoji_manager"))
    {
      com.tencent.mm.ak.a.b(aal(), "emoji", ".ui.SettingsEmojiUI", new Intent());
      return true;
    }
    return false;
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.SettingsUI", "settings handle");
    switch (paramInt1)
    {
    default:
    case 5:
    case 3:
    case 2:
    case 4:
    }
    do
    {
      String str2;
      do
      {
        do
        {
          String str3;
          do
          {
            do
              return;
            while (paramInt2 != -1);
            aMF();
            return;
            str3 = s.a(getApplicationContext(), paramIntent, be.uz().sB());
          }
          while (str3 == null);
          Intent localIntent2 = new Intent();
          localIntent2.setClass(aal(), CropImageNewUI.class);
          localIntent2.putExtra("CropImageMode", 1);
          localIntent2.putExtra("CropImage_OutputPath", str3);
          localIntent2.putExtra("CropImage_ImgPath", str3);
          startActivityForResult(localIntent2, 4);
          return;
        }
        while (paramIntent == null);
        str2 = s.a(getApplicationContext(), paramIntent, be.uz().sB());
      }
      while (str2 == null);
      Intent localIntent1 = new Intent();
      localIntent1.setClass(aal(), CropImageNewUI.class);
      localIntent1.putExtra("CropImageMode", 1);
      localIntent1.putExtra("CropImage_OutputPath", af.vJ().h(v.th(), true));
      localIntent1.putExtra("CropImage_ImgPath", str2);
      h.b(this, paramIntent, localIntent1, be.uz().sB(), 4);
      return;
    }
    while (paramIntent == null);
    String str1 = paramIntent.getStringExtra("CropImage_OutputPath");
    if (str1 == null)
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SettingsUI", "crop picture failed");
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      new k(aal(), str1).jY(1);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
    be.uz().sr().a(this);
    i.rX().a(this.hdT);
  }

  protected void onDestroy()
  {
    if (be.se())
    {
      be.uz().sr().b(this);
      i.rX().b(this.hdT);
    }
    if (this.cyn != null)
      be.uA().b(281, this.cyn);
    if (this.gmb != null)
      be.uA().b(255, this.gmb);
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    PersonalPreference localPersonalPreference = (PersonalPreference)this.cIG.wn("settings_account");
    if (localPersonalPreference != null)
      localPersonalPreference.xs(v.th());
    if (!com.tencent.mm.x.b.Bd())
    {
      Preference localPreference1 = this.cIG.wn("settings_like_facebook");
      this.cIG.c(localPreference1);
      Preference localPreference2 = this.cIG.wn("settings_follow_twitter");
      this.cIG.c(localPreference2);
    }
    aMD();
    aME();
    aMf();
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.SettingsUI", "on resume");
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsUI
 * JD-Core Version:    0.6.2
 */