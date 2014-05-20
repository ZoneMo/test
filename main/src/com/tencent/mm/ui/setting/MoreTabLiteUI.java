package com.tencent.mm.ui.setting;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.m.af;
import com.tencent.mm.m.m;
import com.tencent.mm.model.be;
import com.tencent.mm.model.co;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.base.preference.DialogPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.tools.CropImageNewUI;
import com.tencent.mm.ui.tools.MultiStageCitySelectUI;

public class MoreTabLiteUI extends com.tencent.mm.ui.b
  implements ar
{
  private int bTN = -1;
  private n cIG;

  private void Jg()
  {
    HeadImgNewPreference localHeadImgNewPreference = (HeadImgNewPreference)this.cIG.wn("settings_change_avatar");
    localHeadImgNewPreference.xr(v.th());
    localHeadImgNewPreference.j(new h(this));
  }

  private void aMd()
  {
    Preference localPreference1 = this.cIG.wn("settings_account_info");
    String str1 = v.ti();
    if (com.tencent.mm.platformtools.au.hX(str1))
    {
      String str2 = v.th();
      if (com.tencent.mm.storage.i.tD(str2))
      {
        localPreference1.setSummary(getString(2131166087));
        return;
      }
      localPreference1.setSummary(str2);
      return;
    }
    Preference localPreference2 = this.cIG.wn("settings_username");
    if (localPreference2 != null)
      localPreference2.setWidgetLayoutResource(2130903531);
    while (true)
    {
      localPreference1.setSummary(str1);
      return;
      aa.e("MicroMsg.SettingsPersonalInfoUI", "[arthurdan.Preference] Notice!!!! screen.findPreference return null!!!!");
    }
  }

  private void aMe()
  {
    Preference localPreference = this.cIG.wn("settings_signature");
    String str = com.tencent.mm.platformtools.au.hW((String)be.uz().sr().get(12291));
    Activity localActivity = aal();
    if (str.length() <= 0)
      str = getString(2131167805);
    localPreference.setSummary(com.tencent.mm.ao.b.e(localActivity, str, -2));
  }

  protected final void FR()
  {
    mn(2131165820);
    be.uz().sr().a(this);
    this.cIG = aIj();
    ((DialogPreference)this.cIG.wn("settings_sex")).a(new f(this));
    a(2130838889, new g(this));
  }

  public final int Gc()
  {
    return 2131034157;
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    aMd();
    int i = com.tencent.mm.platformtools.au.U(paramObject);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Integer.valueOf(i);
    arrayOfObject1[2] = paramao;
    aa.e("MicroMsg.SettingsPersonalInfoUI", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
    if ((paramao != be.uz().sr()) || (i <= 0))
    {
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = paramao;
      aa.b("MicroMsg.SettingsPersonalInfoUI", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
    }
    while (i != 12291)
    {
      Object[] arrayOfObject2;
      return;
    }
    aMe();
  }

  protected final void aDG()
  {
    FR();
    this.cIG = aIj();
  }

  protected final void aDH()
  {
    Jg();
    String str1 = (String)be.uz().sr().get(4);
    if ((str1 != null) && (str1.length() > 0))
      this.cIG.wn("settings_name").setSummary(com.tencent.mm.ao.b.e(aal(), str1, -2));
    aMd();
    int i = com.tencent.mm.platformtools.au.a((Integer)be.uz().sr().get(12290), 0);
    DialogPreference localDialogPreference = (DialogPreference)this.cIG.wn("settings_sex");
    switch (i)
    {
    default:
      localDialogPreference.setValue("unknown");
    case 1:
    case 2:
    }
    while (true)
    {
      co localco = co.vw();
      String str2 = com.tencent.mm.platformtools.au.hW(localco.rC());
      String str3 = com.tencent.mm.platformtools.au.hW(localco.rD());
      this.cIG.wn("settings_district").setSummary(w.dj(str2) + " " + str3);
      aMe();
      return;
      localDialogPreference.setValue("male");
      continue;
      localDialogPreference.setValue("female");
    }
  }

  protected final void aDI()
  {
  }

  protected final void aDJ()
  {
    co localco = co.vw();
    if (this.bTN != -1)
      localco.bL(this.bTN);
    be.uz().st().a(new az(1, co.a(localco)));
    be.uA().d(new com.tencent.mm.z.i(5));
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
      this.cIG.addPreferencesFromResource(2131034156);
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
    String str = paramPreference.getKey();
    aa.d("MicroMsg.SettingsPersonalInfoUI", "key = " + str);
    if (str.equals("settings_change_avatar"))
      if (!be.uz().isSDCardAvailable())
        dn.bW(aal());
    do
    {
      return false;
      String[] arrayOfString = getResources().getStringArray(2131296280);
      com.tencent.mm.ui.base.h.b(aal(), "", arrayOfString, "", new i(this));
      return true;
      if (str.equals("settings_name"))
      {
        Intent localIntent = new Intent();
        localIntent.setClass(aal(), SettingsModifyNameUI.class);
        startActivity(localIntent);
        return true;
      }
      if (str.equals("settings_account_info"))
      {
        e(SettingsAccountInfoUI.class);
        return true;
      }
      if (str.equals("settings_district"))
      {
        e(MultiStageCitySelectUI.class);
        return true;
      }
      if (str.equals("settings_signature"))
      {
        aal().startActivity(new Intent(aal(), EditSignatureUI.class));
        return true;
      }
    }
    while (!str.equals("settings_qrcode"));
    aal().startActivity(new Intent(aal(), SelfQRCodeUI.class));
    return true;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    aa.d("MicroMsg.SettingsPersonalInfoUI", "onAcvityResult requestCode:%d, resultCode:%d", arrayOfObject);
    if (paramInt2 != -1)
      if ((paramInt1 == 3) || (paramInt1 == 2) || (paramInt1 == 4))
        new Handler(Looper.getMainLooper()).post(new j(this));
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
        localIntent2.setClass(aal(), CropImageNewUI.class);
        localIntent2.putExtra("CropImageMode", 1);
        localIntent2.putExtra("CropImage_Filter", true);
        localIntent2.putExtra("CropImage_OutputPath", af.vJ().h(v.th() + ".crop", true));
        localIntent2.putExtra("CropImage_ImgPath", null);
        com.tencent.mm.ui.tools.h.b(aal(), paramIntent, localIntent2, be.uz().sB(), 4);
        return;
        str2 = s.a(aal().getApplicationContext(), paramIntent, be.uz().sB());
      }
      while (str2 == null);
      Intent localIntent1 = new Intent();
      localIntent1.setClass(aal(), CropImageNewUI.class);
      localIntent1.putExtra("CropImageMode", 1);
      localIntent1.putExtra("CropImage_OutputPath", str2);
      localIntent1.putExtra("CropImage_ImgPath", str2);
      a(localIntent1);
      return;
      new Handler(Looper.getMainLooper()).post(new k(this));
    }
    while (paramIntent == null);
    String str1 = paramIntent.getStringExtra("CropImage_OutputPath");
    if (str1 == null)
    {
      aa.e("MicroMsg.SettingsPersonalInfoUI", "crop picture failed");
      return;
    }
    new com.tencent.mm.pluginsdk.model.k(aal(), str1).a(1, new l(this));
  }

  public final void onDestroy()
  {
    aa.d("MicroMsg.SettingsPersonalInfoUI", "SettingsPersonalInfoUI.onDestroy()");
    be.uz().sr().b(this);
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.MoreTabLiteUI
 * JD-Core Version:    0.6.2
 */