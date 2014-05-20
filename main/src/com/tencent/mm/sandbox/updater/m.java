package com.tencent.mm.sandbox.updater;

import android.app.NotificationManager;
import android.content.Intent;
import com.tencent.mm.sdk.platformtools.cj;

final class m
  implements Runnable
{
  m(AppUpdaterUI paramAppUpdaterUI, String paramString)
  {
  }

  public final void run()
  {
    String str = this.gbh;
    Intent localIntent = cj.sN(str);
    ((NotificationManager)this.gbe.getSystemService("notification")).cancel(99);
    this.gbe.startActivity(localIntent);
    this.gbe.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.m
 * JD-Core Version:    0.6.2
 */