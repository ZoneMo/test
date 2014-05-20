package com.tencent.mm.plugin.scanner.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class j
  implements MenuItem.OnMenuItemClickListener
{
  j(BaseScanUI paramBaseScanUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    aa.d("MicroMsg.scanner.ScanBaseUI", "backBtn onClick");
    BaseScanUI.b(this.ecu, true);
    this.ecu.finish();
    this.ecu.overridePendingTransition(0, 0);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.j
 * JD-Core Version:    0.6.2
 */