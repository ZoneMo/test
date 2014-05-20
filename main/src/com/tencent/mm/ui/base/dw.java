package com.tencent.mm.ui.base;

import android.os.Handler;

final class dw
  implements Runnable
{
  dw(MultiTouchImageView paramMultiTouchImageView, long paramLong, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
  }

  public final void run()
  {
    long l = System.currentTimeMillis();
    float f1 = Math.min(this.gDs, (float)(l - this.ctv));
    float f2 = this.gDt + f1 * this.gDu;
    this.gDx.c(f2, this.gDv, this.gDw);
    if (f1 < this.gDs)
      this.gDx.mHandler.post(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.dw
 * JD-Core Version:    0.6.2
 */