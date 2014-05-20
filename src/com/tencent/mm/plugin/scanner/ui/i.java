package com.tencent.mm.plugin.scanner.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class i
  implements View.OnClickListener
{
  i(BaseScanUI paramBaseScanUI)
  {
  }

  public final void onClick(View paramView)
  {
    aa.d("MicroMsg.scanner.ScanBaseUI", "backBtn onClick");
    BaseScanUI.b(this.ecu, true);
    this.ecu.finish();
    this.ecu.overridePendingTransition(0, 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.i
 * JD-Core Version:    0.6.2
 */