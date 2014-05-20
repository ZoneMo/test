package com.tencent.mm.plugin.scanner.ui;

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.tencent.mm.n;
import com.tencent.mm.plugin.scanner.b.a;
import com.tencent.mm.sdk.platformtools.aa;

final class d extends Handler
{
  d(BaseScanUI paramBaseScanUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage == null)
    {
      aa.w("MicroMsg.scanner.ScanBaseUI", "selectScanModeHandler msg is null");
      return;
    }
    if (BaseScanUI.q(this.ecu))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramMessage.what);
      aa.c("MicroMsg.scanner.ScanBaseUI", "selectScanModeHandler click too quick, msg.what=[%s]", arrayOfObject);
      return;
    }
    BaseScanUI.d(this.ecu, true);
    if (BaseScanUI.f(this.ecu) != null)
    {
      if (BaseScanUI.f(this.ecu).aaA() == paramMessage.what)
      {
        BaseScanUI.d(this.ecu, false);
        return;
      }
      BaseScanUI.f(this.ecu).onPause();
      if (BaseScanUI.f(this.ecu).aaw() != null)
        BaseScanUI.f(this.ecu).aaw().aaF();
      BaseScanUI.f(this.ecu);
      BaseScanUI.a(this.ecu, null);
    }
    if (BaseScanUI.b(this.ecu))
      BaseScanUI.b(this.ecu, false);
    while ((BaseScanUI.r(this.ecu)) && (paramMessage.what != 1))
    {
      Toast.makeText(this.ecu, n.bxd, 0).show();
      BaseScanUI.s(this.ecu).hI(1);
      BaseScanUI.d(this.ecu, false);
      return;
      BaseScanUI.b(this.ecu, true);
    }
    switch (paramMessage.what)
    {
    case 4:
    default:
    case 1:
    case 2:
    case 3:
    case 5:
    }
    while (true)
    {
      BaseScanUI.w(this.ecu);
      this.ecu.aaj();
      BaseScanUI.d(this.ecu, false);
      return;
      if (BaseScanUI.t(this.ecu))
        this.ecu.mn(n.bxh);
      while (true)
      {
        if (!BaseScanUI.u(this.ecu))
          break label389;
        BaseScanUI.a(this.ecu, new at(this.ecu, BaseScanUI.v(this.ecu), this.ecu.ece, BaseScanUI.t(this.ecu), BaseScanUI.u(this.ecu)));
        break;
        this.ecu.mn(n.bxi);
      }
      label389: BaseScanUI.a(this.ecu, new at(this.ecu, BaseScanUI.v(this.ecu), this.ecu.ece, BaseScanUI.t(this.ecu)));
      continue;
      this.ecu.mn(n.bxn);
      BaseScanUI.a(this.ecu, new an(this.ecu, BaseScanUI.v(this.ecu)));
      continue;
      this.ecu.mn(n.bxf);
      BaseScanUI.a(this.ecu, new ar(this.ecu, BaseScanUI.v(this.ecu)));
      continue;
      this.ecu.mn(n.bxj);
      BaseScanUI.a(this.ecu, new bi(this.ecu, BaseScanUI.v(this.ecu)));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.d
 * JD-Core Version:    0.6.2
 */