package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.webwx.a.c;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.az;

final class ev
  implements az
{
  ev(et paramet, c paramc)
  {
  }

  public final boolean ok()
  {
    be.uA().c(this.ffc);
    be.uA().b(281, et.a(this.hgp));
    et.b(this.hgp);
    if (et.c(this.hgp) != null)
    {
      et.c(this.hgp).azn();
      et.d(this.hgp);
    }
    if (SettingsUI.e(this.hgp.hgl) != null)
      SettingsUI.e(this.hgp.hgl).dismiss();
    SettingsUI.g(this.hgp.hgl);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ev
 * JD-Core Version:    0.6.2
 */