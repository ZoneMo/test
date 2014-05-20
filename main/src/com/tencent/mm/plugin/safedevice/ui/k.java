package com.tencent.mm.plugin.safedevice.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class k
  implements DialogInterface.OnClickListener
{
  k(MySafeDeviceListUI paramMySafeDeviceListUI, boolean paramBoolean)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    MySafeDeviceListUI.a(this.ean, this.eap);
    MySafeDeviceListUI.b(this.ean, MySafeDeviceListUI.c(this.ean));
    MySafeDeviceListUI.Zw();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.k
 * JD-Core Version:    0.6.2
 */