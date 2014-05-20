package com.tencent.mm.ui.base.preference;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class u
  implements i
{
  u(t paramt, DialogPreference paramDialogPreference, Preference paramPreference)
  {
  }

  public final void aIb()
  {
    MMPreference.c(this.gGx.gGu);
    if (this.gGv.isPersistent())
      MMPreference.b(this.gGx.gGu).edit().putString(this.gGw.getKey(), this.gGv.getValue()).commit();
    MMPreference.d(this.gGx.gGu).notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.u
 * JD-Core Version:    0.6.2
 */