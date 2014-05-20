package com.tencent.mm.sandbox.updater;

import android.app.NotificationManager;
import android.content.Intent;
import com.tencent.mm.sdk.platformtools.aa;

final class g
  implements Runnable
{
  g(AppUpdaterUI paramAppUpdaterUI, int paramInt)
  {
  }

  public final void run()
  {
    if (this.gbg == 2)
    {
      aa.d("MicroMsg.AppUpdaterUI", "finishType == FINISH_TYPE_HANDLE_CRITICAL_CANCLE");
      ((NotificationManager)this.gbe.getSystemService("notification")).cancel(99);
      if (AppUpdaterUI.m(this.gbe) == 1)
      {
        Intent localIntent = new Intent();
        localIntent.setAction("com.tencent.mm.sandbox.updater.intent.ACTION_EXIT_APP");
        this.gbe.sendBroadcast(localIntent, "com.tencent.mm.permission.MM_MESSAGE");
        return;
      }
      this.gbe.finish();
      return;
    }
    aa.d("MicroMsg.AppUpdaterUI", "finishType == " + this.gbg);
    ((NotificationManager)this.gbe.getSystemService("notification")).cancel(99);
    this.gbe.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.g
 * JD-Core Version:    0.6.2
 */