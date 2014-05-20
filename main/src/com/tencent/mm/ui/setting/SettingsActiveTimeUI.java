package com.tencent.mm.ui.setting;

import android.app.Dialog;
import android.app.TimePickerDialog;
import android.app.TimePickerDialog.OnTimeSetListener;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.tencent.mm.pluginsdk.e.e;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import java.sql.Time;
import java.text.DateFormat;

public class SettingsActiveTimeUI extends MMPreference
{
  private n cIG;
  private int heW;
  private int heX;
  private int heY;
  private int heZ;
  private boolean hfa = false;
  private Preference hfb;
  private Preference hfc;
  private final TimePickerDialog.OnTimeSetListener hfd = new bo(this);

  private static String e(Context paramContext, int paramInt1, int paramInt2)
  {
    String str = z.b(paramContext.getSharedPreferences(al.azs(), 0));
    if (!str.equalsIgnoreCase("zh_CN"))
      return DateFormat.getTimeInstance(3, z.sA(str)).format(new Time(paramInt1, paramInt2, 0));
    StringBuilder localStringBuilder = new StringBuilder().append(e.h(paramContext, 3600000L * paramInt1 + 60000L * paramInt2));
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    return String.format("%02d:%02d", arrayOfObject);
  }

  protected final void FR()
  {
    this.cIG.removeAll();
    this.cIG.addPreferencesFromResource(2131034175);
    SharedPreferences localSharedPreferences = aIk();
    this.hfc = this.cIG.wn("settings_active_begin_time");
    this.heW = localSharedPreferences.getInt("settings_active_begin_time_hour", 8);
    this.heX = localSharedPreferences.getInt("settings_active_begin_time_min", 0);
    this.hfc.setSummary(e(this, this.heW, this.heX));
    this.hfb = this.cIG.wn("settings_active_end_time");
    this.heY = localSharedPreferences.getInt("settings_active_end_time_hour", 23);
    this.heZ = localSharedPreferences.getInt("settings_active_end_time_min", 0);
    this.hfb.setSummary(e(this, this.heY, this.heZ));
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)this.cIG.wn("settings_active_time_full");
    boolean bool = localSharedPreferences.getBoolean("settings_active_time_full", true);
    localCheckBoxPreference.setChecked(bool);
    if (bool)
    {
      this.hfc.setEnabled(false);
      this.hfb.setEnabled(false);
      if (!localCheckBoxPreference.isChecked())
        break label273;
      this.cIG.c(this.hfc);
      this.cIG.c(this.hfb);
    }
    while (true)
    {
      this.cIG.notifyDataSetChanged();
      a(new bn(this));
      return;
      this.hfc.setEnabled(true);
      this.hfb.setEnabled(true);
      break;
      label273: this.cIG.wo("settings_active_time_tip");
    }
  }

  public final int Gc()
  {
    return 2131034175;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    if (paramPreference.getKey().equals("settings_active_begin_time"))
    {
      this.hfa = true;
      showDialog(1);
      return true;
    }
    if (paramPreference.getKey().equals("settings_active_end_time"))
    {
      this.hfa = false;
      showDialog(1);
      return true;
    }
    if (paramPreference.getKey().equals("settings_active_time_full"))
    {
      FR();
      return true;
    }
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(2131165961);
    this.cIG = aIj();
    FR();
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 1:
    }
    if (this.hfa)
      return new TimePickerDialog(aal(), this.hfd, this.heW, this.heX, false);
    return new TimePickerDialog(aal(), this.hfd, this.heY, this.heZ, false);
  }

  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    switch (paramInt)
    {
    default:
      return;
    case 1:
    }
    if (this.hfa)
    {
      ((TimePickerDialog)paramDialog).updateTime(this.heW, this.heX);
      return;
    }
    ((TimePickerDialog)paramDialog).updateTime(this.heY, this.heZ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsActiveTimeUI
 * JD-Core Version:    0.6.2
 */