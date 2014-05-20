package com.tencent.mm.ui.base.preference;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class s
  implements ai
{
  s(MMPreference paramMMPreference)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    if ((!MMPreference.a(this.gGu)) && (paramPreference.isEnabled()) && (paramPreference.isSelectable()))
    {
      MMPreference.a(this.gGu, true);
      if (!(paramPreference instanceof MMSwitchButtonPreference))
        break label165;
      MMSwitchButtonPreference localMMSwitchButtonPreference = (MMSwitchButtonPreference)paramPreference;
      localMMSwitchButtonPreference.setChecked(((Boolean)paramObject).booleanValue());
      if (localMMSwitchButtonPreference.isPersistent())
        MMPreference.b(this.gGu).edit().putBoolean(paramPreference.getKey(), localMMSwitchButtonPreference.isChecked()).commit();
      MMPreference.c(this.gGu);
    }
    label165: for (int i = 1; ; i = 0)
    {
      if (paramPreference.getKey() != null)
        this.gGu.a(MMPreference.d(this.gGu), paramPreference);
      if (i != 0)
        MMPreference.d(this.gGu).notifyDataSetChanged();
      MMPreference.a(this.gGu, false);
      return i != 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.s
 * JD-Core Version:    0.6.2
 */