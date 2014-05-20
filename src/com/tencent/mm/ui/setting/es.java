package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.ay;

final class es
  implements DialogInterface.OnCancelListener
{
  es(eo parameo, com.tencent.mm.modelsimple.ac paramac)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
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
      SettingsUI.e(this.hgn.hgl).dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.es
 * JD-Core Version:    0.6.2
 */