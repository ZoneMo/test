package com.tencent.mm.sandbox.updater;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.sdk.platformtools.aa;

final class r
  implements DialogInterface.OnCancelListener
{
  r(AppUpdaterUI paramAppUpdaterUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    aa.d("MicroMsg.AppUpdaterUI", "click cancel button");
    AppUpdaterUI.a(this.gbe, 12);
    AppUpdaterUI.b(this.gbe, 2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.r
 * JD-Core Version:    0.6.2
 */