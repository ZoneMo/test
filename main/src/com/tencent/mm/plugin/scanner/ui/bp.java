package com.tencent.mm.plugin.scanner.ui;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.as;

final class bp
  implements as
{
  bp(SelectScanModePanel paramSelectScanModePanel)
  {
  }

  public final void ab(int paramInt1, int paramInt2)
  {
    aa.v("MicroMsg.scanner.SelectScanModePanel", "onMeasure width:" + paramInt1 + " height:" + paramInt2 + " isMeasured:" + SelectScanModePanel.a(this.efr));
    if ((SelectScanModePanel.a(this.efr)) || (paramInt2 == 0) || (paramInt1 == 0))
      return;
    SelectScanModePanel.b(this.efr);
    SelectScanModePanel.a(this.efr, paramInt2);
    SelectScanModePanel.b(this.efr, paramInt1);
    SelectScanModePanel.c(this.efr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.bp
 * JD-Core Version:    0.6.2
 */