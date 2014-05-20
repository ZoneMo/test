package com.tencent.mm.plugin.scanner.ui;

import android.view.View;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;

final class b
  implements Runnable
{
  b(a parama, int paramInt)
  {
  }

  public final void run()
  {
    if ((be.uA().wS() == 1) || (be.uA().wS() == 5))
      if (!BaseScanUI.b(this.ecw.ecu));
    label276: 
    while (true)
    {
      return;
      if ((BaseScanUI.c(this.ecw.ecu) != null) && (BaseScanUI.d(this.ecw.ecu) != null))
      {
        BaseScanUI.c(this.ecw.ecu).setVisibility(8);
        BaseScanUI.d(this.ecw.ecu).setVisibility(8);
      }
      BaseScanUI.a(this.ecw.ecu, true);
      BaseScanUI.b(this.ecw.ecu, false);
      BaseScanUI.e(this.ecw.ecu);
      while (true)
      {
        if (BaseScanUI.f(this.ecw.ecu) == null)
          break label276;
        ai localai = BaseScanUI.f(this.ecw.ecu);
        localai.aav();
        return;
        if (!BaseScanUI.b(this.ecw.ecu))
          break;
        if ((BaseScanUI.c(this.ecw.ecu) != null) && (BaseScanUI.d(this.ecw.ecu) != null))
        {
          BaseScanUI.c(this.ecw.ecu).setText(n.bxq);
          BaseScanUI.d(this.ecw.ecu).setVisibility(0);
          BaseScanUI.c(this.ecw.ecu).setVisibility(0);
        }
        BaseScanUI.a(this.ecw.ecu, false);
        BaseScanUI.b(this.ecw.ecu, true);
        this.ecw.ecu.aad();
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.b
 * JD-Core Version:    0.6.2
 */