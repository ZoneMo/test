package com.tencent.mm.ui.base;

import com.tencent.mm.sdk.platformtools.aa;

final class bb
  implements Runnable
{
  bb(az paramaz, int paramInt)
  {
  }

  public final void run()
  {
    MMGridPaperGridView localMMGridPaperGridView = (MMGridPaperGridView)this.gzI.gzH.cUk.getChildAt(0);
    int i = this.cUM + (this.gzI.gzH.cUk.getChildCount() >> 1);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i);
    aa.d("MicroMsg.MMGridPaper", "move down, old index[0], new index[%d]", arrayOfObject);
    this.gzI.gzH.cUk.removeViewAt(0);
    localMMGridPaperGridView.a(i, this.gzI.gzH.cUv, this.gzI.gzH.cUu, this.gzI.gzH.gzv);
    this.gzI.gzH.cUk.addView(localMMGridPaperGridView);
    int j = this.gzI.gzH.cUk.getChildCount() >> 1;
    this.gzI.gzH.cUk.mZ(j);
    MMGridPaper.a(this.gzI.gzH, 1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bb
 * JD-Core Version:    0.6.2
 */