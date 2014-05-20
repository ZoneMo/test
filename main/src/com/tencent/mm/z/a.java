package com.tencent.mm.z;

import com.tencent.mm.n.n;
import com.tencent.mm.sdk.platformtools.aa;

final class a
{
  private n ctM = null;
  int cur = 0;
  int cus = 0;
  boolean cut = false;
  int cuu = 0;
  private i cuv = null;

  final void Bm()
  {
    int i = 50;
    float f1 = 1.0F;
    if (this.ctM == null)
    {
      aa.w("MicroMsg.NetSceneSync.InitProgressCallback", "dkinit doProgressCallBack progress is null");
      return;
    }
    if (this.cuv == null)
    {
      aa.w("MicroMsg.NetSceneSync.InitProgressCallback", "dkinit doProgressCallBack netscene is null");
      return;
    }
    if (this.cus > i);
    int j;
    while (!this.cut)
    {
      j = i;
      Object[] arrayOfObject = new Object[6];
      arrayOfObject[0] = Integer.valueOf(j);
      arrayOfObject[1] = Integer.valueOf(this.cus);
      arrayOfObject[2] = Boolean.valueOf(this.cut);
      arrayOfObject[3] = Integer.valueOf(i);
      arrayOfObject[4] = Integer.valueOf(this.cur);
      arrayOfObject[5] = Integer.valueOf(this.cuu);
      aa.e("MicroMsg.NetSceneSync.InitProgressCallback", "dkinit ratio:%d doscenecount:%d doscenedone:%b ratioDoScene:%d cmdindex:%d cmdcount:%d ", arrayOfObject);
      this.ctM.a(j, 100, this.cuv);
      return;
      i = this.cus;
    }
    float f2 = this.cur / this.cuu;
    if (f2 > f1);
    while (true)
    {
      j = (int)(f1 * (100 - i) + i);
      break;
      f1 = f2;
    }
  }

  final void a(n paramn, i parami)
  {
    this.ctM = paramn;
    this.cuv = parami;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.a
 * JD-Core Version:    0.6.2
 */