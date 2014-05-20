package com.tencent.mm.ui.base;

import android.os.Handler;
import com.tencent.mm.sdk.platformtools.aa;

final class az
  implements at
{
  az(MMGridPaper paramMMGridPaper)
  {
  }

  public final void ac(int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(this.gzH.cUr);
    arrayOfObject[2] = Integer.valueOf(this.gzH.cUs);
    arrayOfObject[3] = Integer.valueOf(this.gzH.gzx);
    aa.e("MicroMsg.MMGridPaper", "onScreenChanged:curScreen[%d], topEdge[%d], bottomEdge[%d], virtualPage[%d]", arrayOfObject);
    if ((paramInt2 <= this.gzH.cUr) && (this.gzH.cUr > 0))
      this.gzH.gnj.post(new ba(this, paramInt2));
    while (true)
    {
      this.gzH.cUp = paramInt2;
      this.gzH.cUl.mY(paramInt2);
      return;
      if ((paramInt2 >= this.gzH.cUs) && (this.gzH.cUs < -1 + this.gzH.gzx))
        this.gzH.gnj.post(new bb(this, paramInt2));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.az
 * JD-Core Version:    0.6.2
 */