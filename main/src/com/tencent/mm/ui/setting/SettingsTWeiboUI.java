package com.tencent.mm.ui.setting;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.co;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.bg;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.z.i;
import junit.framework.Assert;

public class SettingsTWeiboUI extends MMPreference
{
  private n cIG;

  private void aMB()
  {
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)this.cIG.wn("settings_tweibo_open");
    if ((0x2 & v.tm()) == 0)
    {
      this.cIG.O("settings_tweibo", true);
      localCheckBoxPreference.setChecked(false);
      aIk().edit().putBoolean(localCheckBoxPreference.getKey(), false).commit();
      return;
    }
    Preference localPreference = this.cIG.wn("settings_tweibo");
    if (localPreference != null)
    {
      String str1 = w.di(cj.hW((String)be.uz().sr().get(12307)));
      String str2 = cj.R((String)be.uz().sr().get(43), "");
      localPreference.setSummary(str2 + getString(2131165841, new Object[] { str1 }));
    }
    this.cIG.O("settings_tweibo", false);
    localCheckBoxPreference.setChecked(true);
    aIk().edit().putBoolean(localCheckBoxPreference.getKey(), true).commit();
  }

  private void aMC()
  {
    int i = 1;
    if (!be.se())
      return;
    int j = v.tm();
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)this.cIG.wn("settings_tweibo_open");
    Assert.assertNotNull(localCheckBoxPreference);
    int k;
    int m;
    label81: au localau2;
    if (localCheckBoxPreference.isChecked())
    {
      k = 0x40 | (j | 0x2);
      be.uz().sr().set(40, Integer.valueOf(k));
      au localau1 = be.uz().st();
      if (!localCheckBoxPreference.isChecked())
        break label140;
      m = i;
      localau1.a(new bg(22, m));
      localau2 = be.uz().st();
      if (!localCheckBoxPreference.isChecked())
        break label146;
    }
    while (true)
    {
      localau2.a(new bg(16, i));
      return;
      k = 0xFFFFFFBF & (j & 0xFFFFFFFD);
      break;
      label140: m = 2;
      break label81;
      label146: i = 2;
    }
  }

  protected final void FR()
  {
    this.cIG = aIj();
    mn(2131165819);
    a(new ed(this));
  }

  public final int Gc()
  {
    return 2131034183;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str1 = paramPreference.getKey();
    aa.i("MicroMsg.SettingsTWeiboUI", str1 + " item has been clicked!");
    if (cj.hX(str1))
      return false;
    CheckBoxPreference localCheckBoxPreference;
    if (str1.equals("settings_tweibo_open"))
    {
      localCheckBoxPreference = (CheckBoxPreference)this.cIG.wn("settings_tweibo_open");
      if (cj.c((Integer)be.uz().sr().get(9)) == 0)
      {
        h.b(aal(), 2131165842, 2131167675, new ee(this, localCheckBoxPreference), new ef(this, localCheckBoxPreference));
        return true;
      }
      ca localca = be.uz().sz().vB("@t.qq.com");
      if (localca == null)
        break label341;
      String str2 = localca.getName();
      int j = str2.indexOf("@t.qq.com");
      if (j < 0)
        break label341;
      String str3 = "http://t.qq.com/" + (String)str2.subSequence(0, j);
      if ((str3 == null) || (str3.equals("")))
        break label341;
      co localco = co.vw();
      localco.bD(str3);
      aa.d("MicroMsg.SettingsTWeiboUI", "First set weibo is " + str3);
      be.uz().st().a(new az(1, co.a(localco)));
    }
    label341: for (int i = 1; ; i = 0)
    {
      if (i == 0)
      {
        h.c(aal(), 2131165840, 2131167675);
        localCheckBoxPreference.setChecked(false);
        aIk().edit().putBoolean(localCheckBoxPreference.getKey(), false).commit();
      }
      aMC();
      aMB();
      this.cIG.notifyDataSetChanged();
      return true;
      return str1.equals("settings_tweibo");
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  protected void onPause()
  {
    super.onPause();
    if ((aIi()) && (be.se()))
    {
      aMC();
      be.uA().d(new i(5));
    }
  }

  protected void onResume()
  {
    aMB();
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsTWeiboUI
 * JD-Core Version:    0.6.2
 */