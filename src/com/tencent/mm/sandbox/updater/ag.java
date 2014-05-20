package com.tencent.mm.sandbox.updater;

import android.app.NotificationManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class ag
  implements DialogInterface.OnCancelListener
{
  ag(Context paramContext, Updater paramUpdater, DialogInterface.OnCancelListener paramOnCancelListener)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    ((NotificationManager)this.cGV.getSystemService("notification")).cancel(99);
    Updater.ly(2);
    this.gbM.onStop();
    if ((!Updater.a(this.gbM)) && (this.gbN != null))
      this.gbN.onCancel(paramDialogInterface);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.ag
 * JD-Core Version:    0.6.2
 */