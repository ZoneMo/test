package com.tencent.mm.ui.setting;

import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.ai;

final class dm
  implements ai
{
  dm(SettingsPersonalInfoUI paramSettingsPersonalInfoUI)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    String str = (String)paramObject;
    if ("male".equalsIgnoreCase(str))
      SettingsPersonalInfoUI.a(this.hfL, 1);
    while (true)
    {
      return false;
      if ("female".equalsIgnoreCase(str))
        SettingsPersonalInfoUI.a(this.hfL, 2);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.dm
 * JD-Core Version:    0.6.2
 */