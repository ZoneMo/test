package com.tencent.mm.plugin.scanner.ui;

import com.tencent.mm.plugin.scanner.b.h;
import com.tencent.mm.sdk.platformtools.aa;

final class p
  implements Runnable
{
  p(BaseScanUI paramBaseScanUI)
  {
  }

  public final void run()
  {
    if (BaseScanUI.i(this.ecu) == null)
      return;
    synchronized (BaseScanUI.l(this.ecu))
    {
      if ((BaseScanUI.p(this.ecu)) && (BaseScanUI.i(this.ecu) != null))
      {
        aa.d("MicroMsg.scanner.ScanBaseUI", "closeCamera");
        BaseScanUI.i(this.ecu).release();
        BaseScanUI.a(this.ecu, null);
        aa.d("MicroMsg.scanner.ScanBaseUI", "scanCamera.release() done");
      }
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.p
 * JD-Core Version:    0.6.2
 */