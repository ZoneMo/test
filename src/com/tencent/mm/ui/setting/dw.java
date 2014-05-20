package com.tencent.mm.ui.setting;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;

final class dw
  implements MenuItem.OnMenuItemClickListener
{
  dw(SettingsRingtoneUI paramSettingsRingtoneUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    SharedPreferences.Editor localEditor = this.hfY.getSharedPreferences(al.azs(), 0).edit();
    if (SettingsRingtoneUI.a(this.hfY) != 0)
    {
      Uri localUri = SettingsRingtoneUI.a(this.hfY, SettingsRingtoneUI.a(this.hfY));
      aa.d("RingtonePickerActivity", "set ringtone to " + localUri);
      if (localUri != null)
      {
        localEditor.putString("settings.ringtone", localUri.toString());
        String str = SettingsRingtoneUI.a(this.hfY, localUri);
        localEditor.putString("settings.ringtone.name", str);
        aa.d("RingtonePickerActivity", "ringtone name: " + str);
      }
    }
    while (true)
    {
      localEditor.commit();
      this.hfY.finish();
      return true;
      localEditor.putString("settings.ringtone", SettingsRingtoneUI.hfS);
      localEditor.putString("settings.ringtone.name", this.hfY.getString(2131165957));
      aa.d("RingtonePickerActivity", "set ringtone follow system");
      continue;
      localEditor.putString("settings.ringtone", SettingsRingtoneUI.hfS);
      localEditor.putString("settings.ringtone.name", this.hfY.getString(2131165957));
      aa.d("RingtonePickerActivity", "set ringtone follow system");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.dw
 * JD-Core Version:    0.6.2
 */