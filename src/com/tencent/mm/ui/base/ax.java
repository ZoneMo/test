package com.tencent.mm.ui.base;

import com.tencent.mm.sdk.platformtools.aa;

final class ax
  implements Runnable
{
  ax(MMGridPaper paramMMGridPaper)
  {
  }

  public final void run()
  {
    aa.w("MicroMsg.MMGridPaper", "post do setDotView");
    MMGridPaper.a(this.gzH);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.ax
 * JD-Core Version:    0.6.2
 */