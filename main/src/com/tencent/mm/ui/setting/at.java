package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.az;

final class at
  implements az
{
  at(SettingsAboutMicroMsgUI paramSettingsAboutMicroMsgUI, com.tencent.mm.modelsimple.ac paramac)
  {
  }

  public final boolean ok()
  {
    be.uA().c(this.heC);
    be.uA().b(255, SettingsAboutMicroMsgUI.c(this.hey));
    SettingsAboutMicroMsgUI.d(this.hey);
    if (SettingsAboutMicroMsgUI.e(this.hey) != null)
    {
      SettingsAboutMicroMsgUI.e(this.hey).azn();
      SettingsAboutMicroMsgUI.f(this.hey);
    }
    if (SettingsAboutMicroMsgUI.a(this.hey) != null)
      SettingsAboutMicroMsgUI.a(this.hey).cancel();
    SettingsAboutMicroMsgUI.g(this.hey);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.at
 * JD-Core Version:    0.6.2
 */