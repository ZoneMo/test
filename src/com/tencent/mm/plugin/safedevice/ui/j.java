package com.tencent.mm.plugin.safedevice.ui;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.ui.base.preference.n;

final class j extends Handler
{
  j(MySafeDeviceListUI paramMySafeDeviceListUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    MySafeDeviceListUI.b(this.ean).notifyDataSetChanged();
    super.handleMessage(paramMessage);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.j
 * JD-Core Version:    0.6.2
 */