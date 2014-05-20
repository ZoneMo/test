package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.az;

final class er
  implements az
{
  er(eo parameo, com.tencent.mm.modelsimple.ac paramac)
  {
  }

  public final boolean ok()
  {
    be.uA().c(this.heC);
    be.uA().b(255, SettingsUI.c(this.hgn.hgl));
    SettingsUI.a(this.hgn.hgl, null);
    if (SettingsUI.d(this.hgn.hgl) != null)
    {
      SettingsUI.d(this.hgn.hgl).azn();
      SettingsUI.a(this.hgn.hgl, null);
    }
    if (SettingsUI.e(this.hgn.hgl) != null)
      SettingsUI.e(this.hgn.hgl).cancel();
    SettingsUI.f(this.hgn.hgl);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.er
 * JD-Core Version:    0.6.2
 */