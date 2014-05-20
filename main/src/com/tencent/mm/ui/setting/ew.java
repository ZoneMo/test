package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.webwx.a.c;
import com.tencent.mm.sdk.platformtools.ay;

final class ew
  implements DialogInterface.OnCancelListener
{
  ew(et paramet, c paramc)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
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
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ew
 * JD-Core Version:    0.6.2
 */