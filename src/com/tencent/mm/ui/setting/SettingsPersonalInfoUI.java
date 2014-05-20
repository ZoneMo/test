package com.tencent.mm.ui.setting;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.e.c;
import com.tencent.mm.m.af;
import com.tencent.mm.m.m;
import com.tencent.mm.model.be;
import com.tencent.mm.model.co;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.pluginsdk.model.k;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.preference.DialogPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.tools.CropImageNewUI;
import com.tencent.mm.ui.tools.MultiStageCitySelectUI;
import com.tencent.mm.ui.tools.h;

public class SettingsPersonalInfoUI extends MMPreference
  implements ar
{
  private int bTN = -1;
  private n cIG;

  private void Jg()
  {
    HeadImgNewPreference localHeadImgNewPreference = (HeadImgNewPreference)this.cIG.wn("settings_change_avatar");
    localHeadImgNewPreference.xr(v.th());
    localHeadImgNewPreference.j(new do(this));
  }

  private void aMd()
  {
    Preference localPreference = this.cIG.wn("settings_username");
    String str1 = v.ti();
    if (com.tencent.mm.platformtools.au.hX(str1))
    {
      String str2 = v.th();
      if (com.tencent.mm.storage.i.tD(str2))
      {
        localPreference.setSummary(getString(2131166087));
        return;
      }
      localPreference.setSummary(str2);
      return;
    }
    localPreference.setSummary(str1);
  }

  private void aMe()
  {
    Preference localPreference = this.cIG.wn("settings_signature");
    String str = com.tencent.mm.platformtools.au.hW((String)be.uz().sr().get(12291));
    if (str.length() <= 0)
      str = getString(2131167805);
    localPreference.setSummary(com.tencent.mm.ao.b.e(this, str, -2));
  }

  protected final void FR()
  {
    mn(2131165820);
    be.uz().sr().a(this);
    this.cIG = aIj();
    ((DialogPreference)this.cIG.wn("settings_sex")).a(new dm(this));
    ca localca = be.uz().sz().vB("@t.qq.com");
    if ((localca != null) && (localca.aBS()))
      com.tencent.mm.ak.a.avr();
    while (true)
    {
      a(new dn(this));
      return;
      this.cIG.wo("settings_tweibo");
    }
  }

  public final int Gc()
  {
    return 2131034179;
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    int i = com.tencent.mm.platformtools.au.U(paramObject);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Integer.valueOf(i);
    arrayOfObject1[2] = paramao;
    aa.e("MicroMsg.SettingsPersonalInfoUI", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
    if ((paramao != be.uz().sr()) || (i <= 0))
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = paramao;
      aa.b("MicroMsg.SettingsPersonalInfoUI", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
      return;
    }
    if (12291 == i)
      aMe();
    aMd();
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    aa.d("MicroMsg.SettingsPersonalInfoUI", "key = " + str);
    if (str.equals("settings_change_avatar"))
      return com.tencent.mm.plugin.a.a.cHT.e(this);
    if ((str.equals("settings_username")) && (com.tencent.mm.platformtools.au.hX(v.ti())))
    {
      e(SettingsAliasUI.class);
      return true;
    }
    if (str.equals("settings_name"))
    {
      Intent localIntent1 = new Intent();
      localIntent1.setClass(this, SettingsModifyNameUI.class);
      startActivity(localIntent1);
      return true;
    }
    if (str.equals("settings_district"))
    {
      e(MultiStageCitySelectUI.class);
      return true;
    }
    if (str.equals("settings_signature"))
    {
      aal().startActivity(new Intent(this, EditSignatureUI.class));
      return true;
    }
    if (str.equals("settings_qrcode"))
      aal().startActivity(new Intent(this, SelfQRCodeUI.class));
    do
    {
      return false;
      if (str.equals("settings_address"))
      {
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("launch_from_webview", false);
        com.tencent.mm.ak.a.a(aal(), "wallet", ".address.ui.WalletSelectAddrUI", localIntent2, true);
        return true;
      }
      if (str.equals("settings_tweibo"))
      {
        e(SettingsTWeiboUI.class);
        return true;
      }
    }
    while (!str.equals("settings_linkedin"));
    Intent localIntent3 = new Intent();
    localIntent3.putExtra("oversea_entry", true);
    com.tencent.mm.ak.a.b(this, "accountsync", "com.tencent.mm.ui.bindlinkedin.BindLinkedInUI", localIntent3);
    return true;
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    aa.d("MicroMsg.SettingsPersonalInfoUI", "onAcvityResult requestCode:%d, resultCode:%d", arrayOfObject);
    if (paramInt2 != -1)
      if ((paramInt1 == 3) || (paramInt1 == 2) || (paramInt1 == 4))
        new Handler(Looper.getMainLooper()).post(new dp(this));
    do
    {
      String str2;
      do
      {
        do
        {
          return;
          switch (paramInt1)
          {
          default:
            return;
          case 2:
          case 3:
          case 4:
          }
        }
        while (paramIntent == null);
        Intent localIntent2 = new Intent();
        localIntent2.setClass(this, CropImageNewUI.class);
        localIntent2.putExtra("CropImageMode", 1);
        localIntent2.putExtra("CropImage_Filter", true);
        localIntent2.putExtra("CropImage_OutputPath", af.vJ().h(v.th() + ".crop", true));
        localIntent2.putExtra("CropImage_ImgPath", null);
        h.b(this, paramIntent, localIntent2, be.uz().sB(), 4);
        return;
        str2 = s.a(getApplicationContext(), paramIntent, be.uz().sB());
      }
      while (str2 == null);
      Intent localIntent1 = new Intent();
      localIntent1.setClass(this, CropImageNewUI.class);
      localIntent1.putExtra("CropImageMode", 1);
      localIntent1.putExtra("CropImage_OutputPath", str2);
      localIntent1.putExtra("CropImage_ImgPath", str2);
      startActivityForResult(localIntent1, 4);
      return;
      new Handler(Looper.getMainLooper()).post(new dq(this));
    }
    while (paramIntent == null);
    String str1 = paramIntent.getStringExtra("CropImage_OutputPath");
    if (str1 == null)
    {
      aa.e("MicroMsg.SettingsPersonalInfoUI", "crop picture failed");
      return;
    }
    new k(aal(), str1).a(1, new dr(this));
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
    if (getIntent().getBooleanExtra("MicroMsg.SettingsPersonalInfoUIintent_set_avatar", false))
      com.tencent.mm.plugin.a.a.cHT.e(this);
  }

  public void onDestroy()
  {
    aa.d("MicroMsg.SettingsPersonalInfoUI", "SettingsPersonalInfoUI.onDestroy()");
    if (be.se())
      be.uz().sr().b(this);
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
    co localco = co.vw();
    if (this.bTN != -1)
      localco.bL(this.bTN);
    be.uz().st().a(new az(1, co.a(localco)));
    be.uA().d(new com.tencent.mm.z.i(5));
  }

  public void onResume()
  {
    boolean bool1 = true;
    aMd();
    Jg();
    String str1 = (String)be.uz().sr().get(4);
    if ((str1 != null) && (str1.length() > 0))
      this.cIG.wn("settings_name").setSummary(com.tencent.mm.ao.b.e(this, str1, -2));
    int i = com.tencent.mm.platformtools.au.a((Integer)be.uz().sr().get(12290), 0);
    DialogPreference localDialogPreference = (DialogPreference)this.cIG.wn("settings_sex");
    boolean bool3;
    label229: Preference localPreference1;
    label278: boolean bool5;
    label310: boolean bool6;
    switch (i)
    {
    default:
      localDialogPreference.setValue("unknown");
      co localco = co.vw();
      String str2 = com.tencent.mm.platformtools.au.hW(localco.rC());
      String str3 = com.tencent.mm.platformtools.au.hW(localco.rD());
      this.cIG.wn("settings_district").setSummary(w.dj(str2) + " " + str3);
      aMe();
      boolean bool2 = com.tencent.mm.ak.a.qc("tmessage");
      com.tencent.mm.ak.a.avr();
      int j = bool2 & true;
      n localn = this.cIG;
      if (j == 0)
      {
        bool3 = bool1;
        localn.O("settings_tweibo", bool3);
        localPreference1 = this.cIG.wn("settings_tweibo");
        if (localPreference1 != null)
        {
          if ((0x2 & v.tm()) != 0)
            break label399;
          localPreference1.setSummary(getString(2131165838));
        }
        boolean bool4 = cj.Bj();
        this.cIG.O("settings_address", bool4);
        if ((0x1000000 & v.tq()) != 0)
          break label414;
        bool5 = bool1;
        String str4 = com.tencent.mm.e.d.qA().getValue("LinkedinPluginClose");
        if ((!com.tencent.mm.platformtools.au.hX(str4)) && (Integer.valueOf(str4).intValue() != 0))
          break label420;
        bool6 = bool1;
        label343: if ((bool5) && (bool6))
          break label426;
        this.cIG.O("settings_linkedin", bool1);
      }
      break;
    case 1:
    case 2:
    }
    while (true)
    {
      super.onResume();
      return;
      localDialogPreference.setValue("male");
      break;
      localDialogPreference.setValue("female");
      break;
      bool3 = false;
      break label229;
      label399: localPreference1.setSummary(getString(2131165839));
      break label278;
      label414: bool5 = false;
      break label310;
      label420: bool6 = false;
      break label343;
      label426: Preference localPreference2 = this.cIG.wn("settings_linkedin");
      if (!com.tencent.mm.platformtools.au.hX((String)be.uz().sr().get(286721)));
      while (true)
      {
        if ((bool1) && ((0x400000 & v.tl()) != 0))
          break label495;
        localPreference2.setSummary(getString(2131165846));
        break;
        bool1 = false;
      }
      label495: localPreference2.setSummary(getString(2131165847));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsPersonalInfoUI
 * JD-Core Version:    0.6.2
 */