package com.tencent.mm.sandbox.updater;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.sandbox.monitor.j;

final class s
  implements DialogInterface.OnClickListener
{
  s(AppUpdaterUI paramAppUpdaterUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (AppUpdaterUI.p(this.gbe) != null)
      AppUpdaterUI.p(this.gbe).cancel();
    AppUpdaterUI.b(this.gbe, 2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.s
 * JD-Core Version:    0.6.2
 */