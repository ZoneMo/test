package com.tencent.mm.ui.base;

import android.os.Handler;
import android.os.SystemClock;

final class di
{
  private float gCA;
  private float gCB;
  private long gCC;
  private boolean gCx = false;
  private float gCy;
  private float gCz;
  private final Handler mHandler = new dj(this);

  private di(MMSwitchButton paramMMSwitchButton)
  {
  }

  public final void dw(boolean paramBoolean)
  {
    long l = SystemClock.uptimeMillis();
    this.gCy = ((float)l);
    if (paramBoolean);
    for (float f = -400.0F; ; f = 400.0F)
    {
      this.gCA = f;
      this.gCz = MMSwitchButton.a(this.gCw);
      this.gCC = (l + 16L);
      this.gCx = true;
      this.mHandler.removeMessages(1000);
      this.mHandler.sendMessageAtTime(this.mHandler.obtainMessage(1000), this.gCC);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.di
 * JD-Core Version:    0.6.2
 */