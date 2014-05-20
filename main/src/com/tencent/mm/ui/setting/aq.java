package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.webwx.a.c;
import com.tencent.mm.sdk.platformtools.ay;

final class aq
  implements DialogInterface.OnCancelListener
{
  aq(an paraman, c paramc)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.ffc);
    be.uA().b(281, an.a(this.heA));
    an.b(this.heA);
    if (an.c(this.heA) != null)
    {
      an.c(this.heA).azn();
      an.d(this.heA);
    }
    if (SettingsAboutMicroMsgUI.a(this.heA.hey) != null)
      SettingsAboutMicroMsgUI.a(this.heA.hey).dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.aq
 * JD-Core Version:    0.6.2
 */