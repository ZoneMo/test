package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.webwx.a.c;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.az;

final class ez
  implements az
{
  ez(SettingsUI paramSettingsUI, c paramc)
  {
  }

  public final boolean ok()
  {
    be.uA().c(this.ffc);
    be.uA().b(281, SettingsUI.h(this.hgl));
    SettingsUI.i(this.hgl);
    if (SettingsUI.d(this.hgl) != null)
    {
      SettingsUI.d(this.hgl).azn();
      SettingsUI.a(this.hgl, null);
    }
    if (SettingsUI.e(this.hgl) != null)
      SettingsUI.e(this.hgl).cancel();
    SettingsUI.j(this.hgl);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ez
 * JD-Core Version:    0.6.2
 */