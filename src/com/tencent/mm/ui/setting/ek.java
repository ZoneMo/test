package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.ay;

final class ek
  implements DialogInterface.OnCancelListener
{
  ek(SettingsUI paramSettingsUI, com.tencent.mm.modelsimple.ac paramac)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
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
      SettingsUI.e(this.hgl).dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ek
 * JD-Core Version:    0.6.2
 */