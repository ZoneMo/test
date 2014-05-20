package com.tencent.mm.ui.setting;

import android.app.TimePickerDialog.OnTimeSetListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.TimePicker;

final class bo
  implements TimePickerDialog.OnTimeSetListener
{
  bo(SettingsActiveTimeUI paramSettingsActiveTimeUI)
  {
  }

  public final void onTimeSet(TimePicker paramTimePicker, int paramInt1, int paramInt2)
  {
    SharedPreferences localSharedPreferences = this.hfe.aIk();
    if (SettingsActiveTimeUI.a(this.hfe))
    {
      SettingsActiveTimeUI.a(this.hfe, paramInt1);
      SettingsActiveTimeUI.b(this.hfe, paramInt2);
      localSharedPreferences.edit().putInt("settings_active_begin_time_hour", SettingsActiveTimeUI.b(this.hfe)).commit();
      localSharedPreferences.edit().putInt("settings_active_begin_time_min", SettingsActiveTimeUI.c(this.hfe)).commit();
    }
    while (true)
    {
      this.hfe.FR();
      return;
      SettingsActiveTimeUI.c(this.hfe, paramInt1);
      SettingsActiveTimeUI.d(this.hfe, paramInt2);
      localSharedPreferences.edit().putInt("settings_active_end_time_hour", SettingsActiveTimeUI.d(this.hfe)).commit();
      localSharedPreferences.edit().putInt("settings_active_end_time_min", SettingsActiveTimeUI.e(this.hfe)).commit();
      localSharedPreferences.edit().commit();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.bo
 * JD-Core Version:    0.6.2
 */