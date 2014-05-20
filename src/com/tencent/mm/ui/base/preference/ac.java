package com.tencent.mm.ui.base.preference;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class ac
  implements m
{
  ac(aa paramaa, EditPreference paramEditPreference, Preference paramPreference)
  {
  }

  public final void aIb()
  {
    y.c(this.gGK.gGJ);
    if (this.gGy.isPersistent())
      y.b(this.gGK.gGJ).edit().putString(this.gGw.getKey(), this.gGy.getValue()).commit();
    y.d(this.gGK.gGJ).notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.ac
 * JD-Core Version:    0.6.2
 */