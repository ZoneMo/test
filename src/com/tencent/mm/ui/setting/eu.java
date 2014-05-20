package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.ay;

final class eu
  implements m
{
  eu(et paramet)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
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
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.eu
 * JD-Core Version:    0.6.2
 */