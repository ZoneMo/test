package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.az;

final class ej
  implements az
{
  ej(SettingsUI paramSettingsUI, com.tencent.mm.modelsimple.ac paramac)
  {
  }

  public final boolean ok()
  {
    be.uA().c(this.heC);
    be.uA().b(255, SettingsUI.c(this.hgl));
    SettingsUI.a(this.hgl, null);
    if (SettingsUI.d(this.hgl) != null)
    {
      SettingsUI.d(this.hgl).azn();
      SettingsUI.a(this.hgl, null);
    }
    if (SettingsUI.e(this.hgl) != null)
      SettingsUI.e(this.hgl).cancel();
    SettingsUI.k(this.hgl);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ej
 * JD-Core Version:    0.6.2
 */