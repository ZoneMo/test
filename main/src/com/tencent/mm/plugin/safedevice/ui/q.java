package com.tencent.mm.plugin.safedevice.ui;

import android.os.Handler;
import com.tencent.mm.sdk.platformtools.aa;

final class q
  implements u, v
{
  private q(MySafeDeviceListUI paramMySafeDeviceListUI)
  {
  }

  public final void ml(String paramString)
  {
    MySafeDeviceListUI.b(this.ean).wo(paramString);
    MySafeDeviceListUI.f(this.ean).sendEmptyMessage(0);
    this.ean.a(0, this.ean.getString(com.tencent.mm.n.bwK), MySafeDeviceListUI.g(this.ean));
    MySafeDeviceListUI.a(this.ean, 0xFFFFFFFF ^ MySafeDeviceListUI.d(this.ean));
    MySafeDeviceListUI.b(this.ean, MySafeDeviceListUI.c(this.ean));
  }

  public final void mm(String paramString)
  {
    aa.e("MicroMsg.MySafeDeviceListUI", "delete safedevice failed" + paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.q
 * JD-Core Version:    0.6.2
 */