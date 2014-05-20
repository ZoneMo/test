package com.tencent.mm.plugin.scanner.ui;

import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import com.tencent.mm.plugin.scanner.b.h;
import com.tencent.mm.sdk.platformtools.aa;

final class m
  implements SurfaceHolder.Callback
{
  m(BaseScanUI paramBaseScanUI)
  {
  }

  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    aa.d("MicroMsg.scanner.ScanBaseUI", "surfaceChanged");
    if (BaseScanUI.i(this.ecu) == null)
    {
      aa.w("MicroMsg.scanner.ScanBaseUI", "surfaceChanged scanCamera == null");
      return;
    }
    if ((BaseScanUI.j(this.ecu)) && (System.currentTimeMillis() - BaseScanUI.k(this.ecu) < 3000L))
      aa.w("MicroMsg.scanner.ScanBaseUI", "surfaceChanged, but haveInitSurface");
    synchronized (BaseScanUI.l(this.ecu))
    {
      BaseScanUI.m(this.ecu);
      return;
    }
  }

  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    aa.d("MicroMsg.scanner.ScanBaseUI", "surfaceCreated");
    if (BaseScanUI.i(this.ecu) == null)
      BaseScanUI.a(this.ecu, new h(this.ecu));
  }

  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    aa.d("MicroMsg.scanner.ScanBaseUI", "surfaceDestroyed");
    BaseScanUI.c(this.ecu, false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.m
 * JD-Core Version:    0.6.2
 */