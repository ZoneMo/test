package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.mm.ak.a;
import com.tencent.mm.e.c;
import com.tencent.mm.model.ae;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.protocal.a.gf;
import com.tencent.mm.protocal.a.vp;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.aj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.bg;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.contact.SelectContactUI;
import com.tencent.mm.z.i;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class SettingsPrivacyUI extends MMPreference
{
  private n cIG;
  private HashMap cQB = new HashMap();
  private String evl = "";
  private boolean heF = false;
  private boolean heG = false;
  private int status;

  private static void Jc()
  {
    be.uA().d(new i(5));
  }

  private static int aMA()
  {
    String str = c.qw().getValue("AutoAddFriendShow");
    if (cj.hX(str))
      str = "0";
    try
    {
      int j = Integer.parseInt(str);
      i = j;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      aa.e("MicroMsg.SettingPrivacy", "getAutoAddDynamicConfig, autoAdd = %d", arrayOfObject);
      return i;
    }
    catch (Exception localException)
    {
      while (true)
        int i = 0;
    }
  }

  private boolean d(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    aa.d("MicroMsg.SettingPrivacy", "switch change : open = " + paramBoolean + " item value = " + paramInt1 + " functionId = " + paramInt2);
    if (paramBoolean)
    {
      this.status = (paramInt1 | this.status);
      if (!paramBoolean)
        break label94;
    }
    label94: for (int i = 1; ; i = 2)
    {
      this.cQB.put(Integer.valueOf(paramInt2), Integer.valueOf(i));
      return true;
      this.status &= (paramInt1 ^ 0xFFFFFFFF);
      break;
    }
  }

  private boolean nL(int paramInt)
  {
    return (paramInt & this.status) != 0;
  }

  protected final void FR()
  {
    mn(2131165878);
    a(new du(this));
    this.cIG.removeAll();
    this.cIG.addPreferencesFromResource(2131034167);
    aa.v("MicroMsg.SettingPrivacy", "init function status: " + Integer.toBinaryString(this.status));
    ((CheckBoxPreference)this.cIG.wn("settings_need_verify")).setChecked(nL(32));
    Integer localInteger = (Integer)be.uz().sr().get(9);
    CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)this.cIG.wn("settings_find_me_by_QQ");
    CheckBoxPreference localCheckBoxPreference2 = (CheckBoxPreference)this.cIG.wn("settings_recommend_qqfriends_to_me");
    boolean bool7;
    boolean bool8;
    label184: label190: CheckBoxPreference localCheckBoxPreference3;
    CheckBoxPreference localCheckBoxPreference4;
    CheckBoxPreference localCheckBoxPreference5;
    boolean bool5;
    label280: boolean bool6;
    label300: label333: boolean bool1;
    label362: CheckBoxPreference localCheckBoxPreference7;
    CheckBoxPreference localCheckBoxPreference8;
    boolean bool2;
    if ((localInteger != null) && (localInteger.intValue() != 0))
      if ((!nL(8)) || (!nL(16)))
      {
        bool7 = true;
        localCheckBoxPreference1.setChecked(bool7);
        if (nL(128))
          break label614;
        bool8 = true;
        localCheckBoxPreference2.setChecked(bool8);
        String str1 = (String)be.uz().sr().get(6);
        localCheckBoxPreference3 = (CheckBoxPreference)this.cIG.wn("settings_find_me_by_mobile");
        localCheckBoxPreference4 = (CheckBoxPreference)this.cIG.wn("settings_recommend_mobilefriends_to_me");
        localCheckBoxPreference5 = (CheckBoxPreference)this.cIG.wn("settings_autoadd_mobilefriends");
        if ((str1 == null) || (str1.length() <= 0))
          break label672;
        if (nL(512))
          break label645;
        bool5 = true;
        localCheckBoxPreference3.setChecked(bool5);
        if (nL(256))
          break label651;
        bool6 = true;
        localCheckBoxPreference4.setChecked(bool6);
        if ((!localCheckBoxPreference4.isChecked()) || (aMA() != 1))
          break label657;
        localCheckBoxPreference5.setChecked(nL(2097152));
        CheckBoxPreference localCheckBoxPreference6 = (CheckBoxPreference)this.cIG.wn("settings_find_me_by_weixin");
        if ((0x200 & com.tencent.mm.model.v.tm()) != 0)
          break label711;
        bool1 = true;
        localCheckBoxPreference6.setChecked(bool1);
        localCheckBoxPreference7 = (CheckBoxPreference)this.cIG.wn("settings_find_me_by_google");
        localCheckBoxPreference8 = (CheckBoxPreference)this.cIG.wn("settings_find_google_contact");
        if (nL(524288))
          break label717;
        bool2 = true;
        label413: localCheckBoxPreference7.setChecked(bool2);
        if (nL(1048576))
          break label723;
      }
    label645: label651: label657: label672: label711: label717: label723: for (boolean bool3 = true; ; bool3 = false)
    {
      localCheckBoxPreference8.setChecked(bool3);
      String str2 = (String)be.uz().sr().get(208903);
      if ((!cj.Bj()) || (TextUtils.isEmpty(str2)))
      {
        this.cIG.c(localCheckBoxPreference7);
        this.cIG.c(localCheckBoxPreference8);
      }
      boolean bool4 = a.qc("sns");
      int i = 0;
      if (bool4)
      {
        int j = 0x8000 & com.tencent.mm.model.v.tq();
        i = 0;
        if (j == 0)
          i = 1;
      }
      if (i == 0)
      {
        this.cIG.O("settings_add_friends_timeline_tip", true);
        this.cIG.O("timline_outside_permiss", true);
        this.cIG.O("timeline_black_permiss", true);
        this.cIG.O("edit_timeline_group", true);
        this.cIG.O("timeline_stranger_show", true);
      }
      this.cIG.notifyDataSetChanged();
      return;
      bool7 = false;
      break;
      label614: bool8 = false;
      break label184;
      this.cIG.c(localCheckBoxPreference1);
      this.cIG.c(localCheckBoxPreference2);
      break label190;
      bool5 = false;
      break label280;
      bool6 = false;
      break label300;
      this.cIG.c(localCheckBoxPreference5);
      break label333;
      this.cIG.c(localCheckBoxPreference3);
      this.cIG.c(localCheckBoxPreference4);
      this.cIG.c(localCheckBoxPreference5);
      break label333;
      bool1 = false;
      break label362;
      bool2 = false;
      break label413;
    }
  }

  public final int Gc()
  {
    return 2131034167;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    int i = 1;
    String str = paramPreference.getKey();
    aa.i("MicroMsg.SettingPrivacy", str + " item has been clicked!");
    SharedPreferences localSharedPreferences = aIk();
    if (str.equals("settings_need_verify"))
      return d(localSharedPreferences.getBoolean("settings_need_verify", false), 32, 4);
    if (str.equals("settings_find_me_by_QQ"))
    {
      if (!((CheckBoxPreference)paramn.wn("settings_find_me_by_QQ")).isChecked());
      int i6;
      for (int i5 = i; ; i6 = 0)
      {
        d(i5, 8, 2);
        d(i5, 16, 3);
        return i;
      }
    }
    if (str.equals("settings_recommend_qqfriends_to_me"))
    {
      boolean bool6 = ((CheckBoxPreference)paramn.wn("settings_recommend_qqfriends_to_me")).isChecked();
      boolean bool7 = false;
      if (!bool6)
        bool7 = i;
      d(bool7, 128, 6);
      return i;
    }
    if (str.equals("settings_find_me_by_weixin"))
    {
      int i1 = com.tencent.mm.model.v.tm();
      boolean bool5 = localSharedPreferences.getBoolean("settings_find_me_by_weixin", false);
      int i2;
      au localau;
      if (!bool5)
      {
        i2 = i1 | 0x200;
        be.uz().sr().set(40, Integer.valueOf(i2));
        localau = be.uz().st();
        if (bool5)
          break label278;
      }
      label278: int i4;
      for (int i3 = i; ; i4 = 2)
      {
        localau.a(new bg(25, i3));
        return i;
        i2 = i1 & 0xFFFFFDFF;
        break;
      }
    }
    if (str.equals("settings_find_me_by_mobile"))
    {
      if (!localSharedPreferences.getBoolean("settings_find_me_by_mobile", false));
      while (true)
      {
        return d(i, 512, 8);
        i = 0;
      }
    }
    if (str.equals("settings_recommend_mobilefriends_to_me"))
    {
      if (!((CheckBoxPreference)paramn.wn("settings_recommend_mobilefriends_to_me")).isChecked());
      int n;
      for (int m = i; ; n = 0)
      {
        d(m, 256, 7);
        if (m != 0)
          d(false, 2097152, 32);
        FR();
        return i;
      }
    }
    if (str.equals("settings_autoadd_mobilefriends"))
      return d(((CheckBoxPreference)paramn.wn("settings_autoadd_mobilefriends")).isChecked(), 2097152, 32);
    if (str.equals("settings_about_blacklist"))
    {
      aj localaj = ae.dm(getString(2131165188));
      Intent localIntent3 = new Intent();
      localIntent3.setClass(this, SelectContactUI.class);
      localIntent3.putExtra("need_biz_entrance", false);
      localIntent3.putExtra("Contact_GroupFilter_Type", localaj.getType());
      localIntent3.putExtra("Contact_GroupFilter_DisplayName", getString(2131165881));
      startActivity(localIntent3);
      return i;
    }
    if (str.equals("timline_outside_permiss"))
    {
      Intent localIntent1 = new Intent();
      localIntent1.putExtra("k_sns_tag_id", 4L);
      localIntent1.putExtra("k_sns_from_settings_about_sns", i);
      a.b(this, "sns", ".ui.SnsBlackDetailUI", localIntent1);
    }
    do
    {
      while (true)
      {
        return false;
        if (str.equals("timeline_black_permiss"))
        {
          Intent localIntent2 = new Intent();
          localIntent2.putExtra("k_sns_tag_id", 5L);
          localIntent2.putExtra("k_sns_from_settings_about_sns", 2);
          a.b(this, "sns", ".ui.SnsTagDetailUI", localIntent2);
        }
        else
        {
          if (!str.equals("edit_timeline_group"))
            break;
          a.l(this, "sns", ".ui.SnsTagPartlyUI");
        }
      }
      if (str.equals("timeline_stranger_show"))
      {
        if (!this.heG);
        int k;
        for (int j = i; ; k = 0)
        {
          this.heG = j;
          if (aq.apz() != null)
            aq.apz().v(this.evl, this.heG);
          this.heF = i;
          break;
        }
      }
      if (str.equals("settings_find_me_by_google"))
      {
        boolean bool3 = ((CheckBoxPreference)paramn.wn("settings_find_me_by_google")).isChecked();
        boolean bool4 = false;
        if (!bool3)
          bool4 = i;
        d(bool4, 524288, 30);
        return i;
      }
    }
    while (!str.equals("settings_find_google_contact"));
    boolean bool1 = ((CheckBoxPreference)paramn.wn("settings_find_google_contact")).isChecked();
    boolean bool2 = false;
    if (!bool1)
      bool2 = i;
    d(bool2, 1048576, 29);
    return i;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cIG = aIj();
    this.status = com.tencent.mm.model.v.tl();
    this.evl = com.tencent.mm.model.v.th();
    FR();
  }

  public void onDestroy()
  {
    if ((this.heF) && (aq.apz() != null))
    {
      vp localvp = aq.apz().w(this.evl, this.heG);
      if (localvp == null)
        return;
      aa.d("MicroMsg.SettingPrivacy", "userinfo " + localvp.toString());
      be.uz().st().a(new az(51, localvp));
      Jc();
    }
    Jc();
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
    be.uz().sr().set(7, Integer.valueOf(this.status));
    Iterator localIterator = this.cQB.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      int i = ((Integer)localEntry.getKey()).intValue();
      int j = ((Integer)localEntry.getValue()).intValue();
      gf localgf = new gf();
      localgf.fIH = i;
      localgf.fII = j;
      be.uz().st().a(new az(23, localgf));
      aa.d("MicroMsg.SettingPrivacy", "switch  " + i + " " + j);
    }
    Jc();
    this.cQB.clear();
  }

  protected void onResume()
  {
    super.onResume();
    vp localvp = new vp();
    if (aq.apz() != null)
      localvp = aq.apz().oq(this.evl);
    if (localvp == null)
      aa.e("MicroMsg.SettingPrivacy", "userinfo is null");
    int i;
    CheckBoxPreference localCheckBoxPreference;
    do
    {
      return;
      i = localvp.fWj;
      localCheckBoxPreference = (CheckBoxPreference)this.cIG.wn("timeline_stranger_show");
    }
    while (localCheckBoxPreference == null);
    if ((i & 0x1) > 0);
    SharedPreferences localSharedPreferences;
    for (boolean bool = true; ; bool = false)
    {
      this.heG = bool;
      localSharedPreferences = getSharedPreferences(getPackageName() + "_preferences", 0);
      if (this.heG)
        break;
      localCheckBoxPreference.setChecked(true);
      localSharedPreferences.edit().putBoolean("timeline_stranger_show", true).commit();
      return;
    }
    localCheckBoxPreference.setChecked(false);
    localSharedPreferences.edit().putBoolean("timeline_stranger_show", false).commit();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsPrivacyUI
 * JD-Core Version:    0.6.2
 */