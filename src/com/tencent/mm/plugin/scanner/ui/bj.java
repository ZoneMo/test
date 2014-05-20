package com.tencent.mm.plugin.scanner.ui;

import android.widget.TextView;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.x;

final class bj
  implements x
{
  bj(bi parambi)
  {
  }

  public final void a(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      bi.a(this.eeR, paramFloat1);
      bi.b(this.eeR, paramFloat2);
      bi.a(this.eeR, paramInt1);
      bi.a(this.eeR, paramString1);
      bi.b(this.eeR, paramString2);
      if ((paramInt2 == 0) || (paramInt2 == 1))
        bi.b(this.eeR, paramInt2);
      if (paramInt2 == 3)
        bi.b(this.eeR, 0);
      if (paramInt2 == 4)
        bi.b(this.eeR, 1);
      bi.a(this.eeR);
      bi.b(this.eeR);
      return;
    }
    aa.e("MicroMsg.scanner.ScanModeStreetView", "initLbsManager failed");
    bi.c(this.eeR).setText(n.bxz);
    bi.c(this.eeR).setVisibility(0);
    this.eeR.djQ.setVisibility(8);
    this.eeR.edK.bd(true);
    bi.d(this.eeR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.bj
 * JD-Core Version:    0.6.2
 */