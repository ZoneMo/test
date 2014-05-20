package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import com.tencent.mm.model.ca;

final class ba
  implements ca
{
  ba(ay paramay)
  {
  }

  public final void uW()
  {
    if (SettingsAboutSystemUI.b(this.heE.heD) != null)
    {
      SettingsAboutSystemUI.b(this.heE.heD).dismiss();
      SettingsAboutSystemUI.a(this.heE.heD, null);
    }
  }

  public final boolean uX()
  {
    return SettingsAboutSystemUI.a(this.heE.heD);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ba
 * JD-Core Version:    0.6.2
 */