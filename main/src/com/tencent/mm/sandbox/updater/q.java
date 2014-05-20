package com.tencent.mm.sandbox.updater;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.sandbox.monitor.j;
import com.tencent.mm.sdk.platformtools.aa;

final class q
  implements DialogInterface.OnClickListener
{
  q(AppUpdaterUI paramAppUpdaterUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.d("MicroMsg.AppUpdaterUI", "click download button");
    AppUpdaterUI.a(this.gbe, 11);
    if (AppUpdaterUI.p(this.gbe) != null)
      AppUpdaterUI.p(this.gbe).ayC();
    AppUpdaterUI.o(this.gbe);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.q
 * JD-Core Version:    0.6.2
 */