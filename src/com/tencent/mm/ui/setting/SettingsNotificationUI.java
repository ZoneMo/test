package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;

public class SettingsNotificationUI extends MMPreference
{
  private n cIG;

  private void aMz()
  {
    Preference localPreference = this.cIG.wn("settings_notification_ringtone");
    if (localPreference != null)
      localPreference.setSummary(aIk().getString("settings.ringtone.name", getString(2131165957)));
    this.cIG.notifyDataSetChanged();
  }

  private boolean ej(boolean paramBoolean)
  {
    Preference localPreference1 = this.cIG.wn("settings_sound");
    Preference localPreference2 = this.cIG.wn("settings_shake");
    if (localPreference1 != null)
      localPreference1.setEnabled(paramBoolean);
    if (localPreference2 != null)
      localPreference2.setEnabled(paramBoolean);
    return true;
  }

  protected final void FR()
  {
    mn(2131165953);
    this.cIG = aIj();
    SharedPreferences localSharedPreferences = aIk();
    this.cIG.removeAll();
    this.cIG.addPreferencesFromResource(2131034177);
    CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)this.cIG.wn("settings_new_msg_notification");
    if (localSharedPreferences.getBoolean(localCheckBoxPreference1.getKey(), true))
    {
      localSharedPreferences.edit().putBoolean(localCheckBoxPreference1.getKey(), true).commit();
      localCheckBoxPreference1.setChecked(true);
    }
    ej(localCheckBoxPreference1.isChecked());
    label235: int i;
    if (localCheckBoxPreference1.isChecked())
    {
      CheckBoxPreference localCheckBoxPreference3 = (CheckBoxPreference)this.cIG.wn("settings_sound");
      if (localSharedPreferences.getBoolean(localCheckBoxPreference3.getKey(), true))
      {
        localSharedPreferences.edit().putBoolean(localCheckBoxPreference3.getKey(), true).commit();
        localCheckBoxPreference3.setChecked(true);
        aMz();
        CheckBoxPreference localCheckBoxPreference4 = (CheckBoxPreference)this.cIG.wn("settings_shake");
        if (localSharedPreferences.getBoolean(localCheckBoxPreference4.getKey(), true))
        {
          localSharedPreferences.edit().putBoolean(localCheckBoxPreference4.getKey(), true).commit();
          localCheckBoxPreference4.setChecked(true);
        }
        CheckBoxPreference localCheckBoxPreference2 = (CheckBoxPreference)this.cIG.wn("settings_sns_notify");
        if ((!a.qc("sns")) || ((0x8000 & v.tq()) != 0))
          break label399;
        i = 1;
        label271: if (i == 0)
          break label405;
        if (localSharedPreferences.getBoolean(localCheckBoxPreference2.getKey(), true))
        {
          localSharedPreferences.edit().putBoolean(localCheckBoxPreference2.getKey(), true).commit();
          localCheckBoxPreference2.setChecked(true);
        }
      }
    }
    while (true)
    {
      a(new dl(this));
      return;
      this.cIG.wo("settings_notification_ringtone");
      break;
      this.cIG.wo("settings_sound");
      this.cIG.wo("settings_notification_ringtone");
      this.cIG.wo("settings_shake");
      this.cIG.wo("settings_active_time");
      break label235;
      label399: i = 0;
      break label271;
      label405: this.cIG.O("settings_sns_notify", true);
      this.cIG.O("settings_sns_notify_tip", true);
    }
  }

  public final int Gc()
  {
    return 2131034177;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    if (str.equals("settings_new_msg_notification"))
    {
      FR();
      return ej(((CheckBoxPreference)paramPreference).isChecked());
    }
    if (str.equals("settings_sound"))
    {
      FR();
      return true;
    }
    if (str.equals("settings_shake"))
    {
      au.a(this, aIk().getBoolean("settings_shake", false));
      return true;
    }
    if (str.equals("settings_notification_ringtone"))
    {
      startActivity(new Intent(aal(), SettingsRingtoneUI.class));
      return true;
    }
    if (str.equals("settings_sns_notify"))
    {
      boolean bool = aIk().getBoolean("settings_sns_notify", true);
      be.uz().sr().set(68384, Boolean.valueOf(bool));
      return true;
    }
    if (str.equals("settings_active_time"))
    {
      startActivity(new Intent(this, SettingsActiveTimeUI.class));
      return true;
    }
    if (str.equals("settings_plugings_notify"))
      startActivity(new Intent(this, SettingsPluginsNotifyUI.class));
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    boolean bool = au.a((Boolean)be.uz().sr().get(68384), true);
    aa.d("MicroMsg.SettingsNotificationUI", "sns Notify " + bool);
    FR();
  }

  public void onResume()
  {
    super.onResume();
    aMz();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsNotificationUI
 * JD-Core Version:    0.6.2
 */