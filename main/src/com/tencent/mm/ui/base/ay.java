package com.tencent.mm.ui.base;

import com.tencent.mm.sdk.platformtools.aa;

final class ay
  implements as
{
  ay(MMGridPaper paramMMGridPaper)
  {
  }

  public final void ab(int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject1 = new Object[6];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(this.gzH.cUn);
    arrayOfObject1[2] = Integer.valueOf(paramInt2);
    arrayOfObject1[3] = Integer.valueOf(this.gzH.cUo);
    arrayOfObject1[4] = Boolean.valueOf(this.gzH.gzz);
    arrayOfObject1[5] = Boolean.valueOf(this.gzH.cUF);
    aa.f("MicroMsg.MMGridPaper", "onMeasure width:[new %d, old %d] height:[new %d, old %d], dialogMode[%B], orientationChange[%B]", arrayOfObject1);
    if (((Math.abs(this.gzH.cUo - paramInt2) < 50) && (Math.abs(this.gzH.cUn - paramInt1) < 50)) || (paramInt2 == 0) || (paramInt1 == 0))
    {
      aa.d("MicroMsg.MMGridPaper", "match width height limit, return");
      return;
    }
    if ((this.gzH.gzz) && (this.gzH.cUn > paramInt1) && (!this.gzH.cUF))
    {
      aa.d("MicroMsg.MMGridPaper", "match ori limit, return");
      return;
    }
    aa.v("MicroMsg.MMGridPaper", "onMeasure: match");
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Boolean.valueOf(this.gzH.gzD);
    aa.f("MicroMsg.MMGridPaper", "onMeasure: mIsManualMeasureMode[%b]", arrayOfObject2);
    this.gzH.cUF = false;
    if (!this.gzH.gzD)
    {
      this.gzH.cUo = paramInt2;
      this.gzH.cUn = paramInt1;
    }
    this.gzH.refresh();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.ay
 * JD-Core Version:    0.6.2
 */