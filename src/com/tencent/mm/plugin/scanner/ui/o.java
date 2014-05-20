package com.tencent.mm.plugin.scanner.ui;

import com.tencent.mm.plugin.scanner.b.h;
import com.tencent.mm.sdk.platformtools.aa;

final class o
  implements Runnable
{
  o(BaseScanUI paramBaseScanUI)
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
      if (!BaseScanUI.i(this.ecu).isOpen())
      {
        aa.w("MicroMsg.scanner.ScanBaseUI", "camera not open");
        return;
      }
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.toString();
      aa.c("MicroMsg.scanner.ScanBaseUI", "Exception in scanCamera.startPreview(), [%s]", arrayOfObject);
      BaseScanUI.o(this.ecu);
      return;
    }
    aa.d("MicroMsg.scanner.ScanBaseUI", "camera startPreview.");
    synchronized (BaseScanUI.l(this.ecu))
    {
      BaseScanUI.i(this.ecu).b(BaseScanUI.n(this.ecu));
      aa.d("MicroMsg.scanner.ScanBaseUI", "camera startPreview. done");
      this.ecu.aC(50L);
      this.ecu.aD(0L);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.o
 * JD-Core Version:    0.6.2
 */