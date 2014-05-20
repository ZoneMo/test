package com.tencent.mm.plugin.scanner.ui;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.plugin.scanner.b.h;

final class f extends Handler
{
  f(BaseScanUI paramBaseScanUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if ((BaseScanUI.i(this.ecu) != null) && (BaseScanUI.j(this.ecu)) && (!BaseScanUI.x(this.ecu)))
      BaseScanUI.i(this.ecu).autoFocus(this.ecu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.f
 * JD-Core Version:    0.6.2
 */