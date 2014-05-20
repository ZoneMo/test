package com.tencent.mm.plugin.safedevice.ui;

final class p
  implements Runnable
{
  p(MySafeDeviceListUI paramMySafeDeviceListUI)
  {
  }

  public final void run()
  {
    MySafeDeviceListUI.b(this.ean, MySafeDeviceListUI.c(this.ean));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.p
 * JD-Core Version:    0.6.2
 */