package com.tencent.mm.ui.base;

import com.tencent.mm.sdk.platformtools.aa;

final class ba
  implements Runnable
{
  ba(az paramaz, int paramInt)
  {
  }

  public final void run()
  {
    MMGridPaperGridView localMMGridPaperGridView = (MMGridPaperGridView)this.gzI.gzH.cUk.getChildAt(-1 + this.gzI.gzH.cUk.getChildCount());
    int i = this.cUM - (this.gzI.gzH.cUk.getChildCount() >> 1);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(-1 + this.gzI.gzH.cUk.getChildCount());
    arrayOfObject[1] = Integer.valueOf(i);
    aa.d("MicroMsg.MMGridPaper", "move up, old index[%d], new index[%d]", arrayOfObject);
    this.gzI.gzH.cUk.removeViewAt(-1 + this.gzI.gzH.cUk.getChildCount());
    localMMGridPaperGridView.a(i, this.gzI.gzH.cUv, this.gzI.gzH.cUu, this.gzI.gzH.gzv);
    this.gzI.gzH.cUk.addView(localMMGridPaperGridView, 0);
    int j = this.gzI.gzH.cUk.getChildCount() >> 1;
    this.gzI.gzH.cUk.mZ(j);
    MMGridPaper.a(this.gzI.gzH, -1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.ba
 * JD-Core Version:    0.6.2
 */