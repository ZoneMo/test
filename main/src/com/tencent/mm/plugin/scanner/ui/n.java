package com.tencent.mm.plugin.scanner.ui;

import com.tencent.mm.plugin.scanner.b.h;
import com.tencent.mm.sdk.platformtools.aa;

final class n
  implements Runnable
{
  n(BaseScanUI paramBaseScanUI)
  {
  }

  public final void run()
  {
    try
    {
      if (BaseScanUI.i(this.ecu) == null)
      {
        aa.w("MicroMsg.scanner.ScanBaseUI", "scanCamera == null, in openCamera()");
        return;
      }
      if (BaseScanUI.i(this.ecu).isOpen())
        aa.d("MicroMsg.scanner.ScanBaseUI", "camera already open");
      while (true)
      {
        BaseScanUI.c(this.ecu, true);
        this.ecu.aai();
        return;
        synchronized (BaseScanUI.l(this.ecu))
        {
          BaseScanUI.i(this.ecu).c(BaseScanUI.n(this.ecu));
          aa.d("MicroMsg.scanner.ScanBaseUI", "scanCamera.open done");
        }
      }
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.toString();
      aa.c("MicroMsg.scanner.ScanBaseUI", "Exception in scanCamera.open(), [%s]", arrayOfObject);
      BaseScanUI.o(this.ecu);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.n
 * JD-Core Version:    0.6.2
 */