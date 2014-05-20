package com.tencent.mm.sandbox.updater;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.sandbox.monitor.j;

final class d
  implements DialogInterface.OnCancelListener
{
  d(AppUpdaterUI paramAppUpdaterUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (AppUpdaterUI.p(this.gbe) != null)
      AppUpdaterUI.p(this.gbe).cancel();
    AppUpdaterUI.b(this.gbe, 2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.d
 * JD-Core Version:    0.6.2
 */