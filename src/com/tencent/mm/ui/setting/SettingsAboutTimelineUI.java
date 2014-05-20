package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.protocal.a.vp;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;

public class SettingsAboutTimelineUI extends MMPreference
{
  private n cIG;
  private String evl = "";
  private boolean heF = false;
  private boolean heG = false;

  protected final void FR()
  {
    this.cIG = aIj();
    mn(2131165884);
    a(new bf(this));
    this.evl = com.tencent.mm.model.v.th();
  }

  public final int Gc()
  {
    return 2131034168;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    if (str.equals("timline_outside_permiss"))
    {
      Intent localIntent1 = new Intent();
      localIntent1.putExtra("k_sns_tag_id", 4L);
      localIntent1.putExtra("k_sns_from_settings_about_sns", 1);
      a.b(this, "sns", ".ui.SnsBlackDetailUI", localIntent1);
    }
    if (str.equals("timeline_black_permiss"))
    {
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("k_sns_tag_id", 5L);
      localIntent2.putExtra("k_sns_from_settings_about_sns", 2);
      a.b(this, "sns", ".ui.SnsTagDetailUI", localIntent2);
    }
    if (str.equals("timeline_stranger_show"))
      if (this.heG)
        break label156;
    label156: for (boolean bool = true; ; bool = false)
    {
      this.heG = bool;
      if (aq.apz() != null)
        aq.apz().v(this.evl, this.heG);
      this.heF = true;
      return false;
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
    vp localvp;
    if ((this.heF) && (aq.apz() != null))
    {
      localvp = aq.apz().w(this.evl, this.heG);
      if (localvp != null);
    }
    else
    {
      return;
    }
    aa.d("MicroMsg.SettingsAboutTimelineUI", "userinfo " + localvp.toString());
    com.tencent.mm.model.be.uz().st().a(new az(51, localvp));
    new Handler(Looper.getMainLooper()).post(new be(this));
  }

  public void onResume()
  {
    super.onResume();
    vp localvp = new vp();
    if (aq.apz() != null)
      localvp = aq.apz().oq(this.evl);
    if (localvp == null)
      aa.e("MicroMsg.SettingsAboutTimelineUI", "userinfo is null");
    while (true)
    {
      this.cIG.notifyDataSetChanged();
      return;
      int i = localvp.fWj;
      CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)this.cIG.wn("timeline_stranger_show");
      if (localCheckBoxPreference != null)
      {
        if ((i & 0x1) > 0);
        SharedPreferences localSharedPreferences;
        for (boolean bool = true; ; bool = false)
        {
          this.heG = bool;
          localSharedPreferences = getSharedPreferences(getPackageName() + "_preferences", 0);
          if (this.heG)
            break label162;
          localCheckBoxPreference.setChecked(true);
          localSharedPreferences.edit().putBoolean("timeline_stranger_show", true).commit();
          break;
        }
        label162: localCheckBoxPreference.setChecked(false);
        localSharedPreferences.edit().putBoolean("timeline_stranger_show", false).commit();
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsAboutTimelineUI
 * JD-Core Version:    0.6.2
 */