package com.tencent.mm.plugin.safedevice.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import java.util.Iterator;
import java.util.List;

final class l
  implements DialogInterface.OnClickListener
{
  l(MySafeDeviceListUI paramMySafeDeviceListUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    MySafeDeviceListUI.b(this.ean, MySafeDeviceListUI.c(this.ean));
    if (MySafeDeviceListUI.d(this.ean) == 1)
    {
      Iterator localIterator = MySafeDeviceListUI.e(this.ean).iterator();
      while (localIterator.hasNext())
        ((SafeDeviceListPreference)localIterator.next()).fI(MySafeDeviceListUI.d(this.ean));
      MySafeDeviceListUI.f(this.ean).sendEmptyMessage(0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.l
 * JD-Core Version:    0.6.2
 */