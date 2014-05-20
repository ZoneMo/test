package com.tencent.mm.ui.base;

import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.az;

final class cf
  implements az
{
  cf(MMProgressBar paramMMProgressBar)
  {
  }

  public final boolean ok()
  {
    int i = MMProgressBar.a(this.gAP) - MMProgressBar.b(this.gAP);
    int j;
    MMProgressBar localMMProgressBar;
    if (i > 0)
    {
      j = (int)(0.6D * i);
      localMMProgressBar = this.gAP;
      if (j <= 0)
        break label90;
    }
    while (true)
    {
      MMProgressBar.a(localMMProgressBar, j);
      MMProgressBar.b(this.gAP, MMProgressBar.b(this.gAP));
      MMProgressBar.d(this.gAP).bO(40 * (MMProgressBar.c(this.gAP) - i) / MMProgressBar.c(this.gAP));
      return false;
      label90: j = 1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.cf
 * JD-Core Version:    0.6.2
 */