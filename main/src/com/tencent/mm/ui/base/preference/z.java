package com.tencent.mm.ui.base.preference;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class z
  implements ai
{
  z(y paramy)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    if ((!y.a(this.gGJ)) && (paramPreference.isEnabled()) && (paramPreference.isSelectable()))
    {
      y.a(this.gGJ, true);
      if (!(paramPreference instanceof MMSwitchButtonPreference))
        break label170;
      MMSwitchButtonPreference localMMSwitchButtonPreference = (MMSwitchButtonPreference)paramPreference;
      localMMSwitchButtonPreference.setChecked(((Boolean)paramObject).booleanValue());
      if (localMMSwitchButtonPreference.isPersistent())
        y.b(this.gGJ).edit().putBoolean(paramPreference.getKey(), localMMSwitchButtonPreference.isChecked()).commit();
      y.c(this.gGJ);
    }
    label170: for (int i = 1; ; i = 0)
    {
      if (paramPreference.getKey() != null)
      {
        y localy = this.gGJ;
        y.d(this.gGJ);
        localy.f(paramPreference);
      }
      if (i != 0)
        y.d(this.gGJ).notifyDataSetChanged();
      y.a(this.gGJ, false);
      return i != 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.z
 * JD-Core Version:    0.6.2
 */