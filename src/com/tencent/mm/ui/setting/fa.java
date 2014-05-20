package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.webwx.a.c;
import com.tencent.mm.sdk.platformtools.ay;

final class fa
  implements DialogInterface.OnCancelListener
{
  fa(SettingsUI paramSettingsUI, c paramc)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
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
      SettingsUI.e(this.hgl).dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.fa
 * JD-Core Version:    0.6.2
 */