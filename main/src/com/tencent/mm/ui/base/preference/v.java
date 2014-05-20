package com.tencent.mm.ui.base.preference;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class v
  implements m
{
  v(t paramt, EditPreference paramEditPreference, Preference paramPreference)
  {
  }

  public final void aIb()
  {
    MMPreference.c(this.gGx.gGu);
    if (this.gGy.isPersistent())
      MMPreference.b(this.gGx.gGu).edit().putString(this.gGw.getKey(), this.gGy.getValue()).commit();
    MMPreference.d(this.gGx.gGu).notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.v
 * JD-Core Version:    0.6.2
 */