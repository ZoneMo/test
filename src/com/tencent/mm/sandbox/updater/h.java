package com.tencent.mm.sandbox.updater;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.sandbox.monitor.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.x;

final class h
  implements DialogInterface.OnClickListener
{
  h(AppUpdaterUI paramAppUpdaterUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.d("MicroMsg.AppUpdaterUI", "update dialog had been canceled");
    if ((AppUpdaterUI.d(this.gbe) != null) && (AppUpdaterUI.d(this.gbe).isShowing()))
      AppUpdaterUI.d(this.gbe).dismiss();
    AppUpdaterUI.a(this.gbe, 6);
    if (AppUpdaterUI.p(this.gbe) != null)
      AppUpdaterUI.p(this.gbe).cancel();
    AppUpdaterUI.b(this.gbe, 2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.h
 * JD-Core Version:    0.6.2
 */