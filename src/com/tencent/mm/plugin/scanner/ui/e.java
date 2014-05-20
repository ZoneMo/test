package com.tencent.mm.plugin.scanner.ui;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.plugin.scanner.b.h;

final class e extends Handler
{
  e(BaseScanUI paramBaseScanUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if ((BaseScanUI.i(this.ecu) != null) && (BaseScanUI.j(this.ecu)))
      BaseScanUI.i(this.ecu).a(this.ecu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.e
 * JD-Core Version:    0.6.2
 */