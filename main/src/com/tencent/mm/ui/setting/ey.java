package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.ay;

final class ey
  implements Runnable
{
  ey(ex paramex)
  {
  }

  public final void run()
  {
    be.uA().b(281, SettingsUI.h(this.hgq.hgl));
    SettingsUI.i(this.hgq.hgl);
    if (SettingsUI.d(this.hgq.hgl) != null)
    {
      SettingsUI.d(this.hgq.hgl).azn();
      SettingsUI.a(this.hgq.hgl, null);
    }
    if (SettingsUI.e(this.hgq.hgl) != null)
      SettingsUI.e(this.hgq.hgl).dismiss();
    SettingsUI.j(this.hgq.hgl);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ey
 * JD-Core Version:    0.6.2
 */