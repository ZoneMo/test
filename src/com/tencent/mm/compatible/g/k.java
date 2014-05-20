package com.tencent.mm.compatible.g;

import android.os.SystemClock;

public final class k
{
  private long cfH = SystemClock.elapsedRealtime();

  public final long qh()
  {
    return SystemClock.elapsedRealtime() - this.cfH;
  }

  public final void reset()
  {
    this.cfH = SystemClock.elapsedRealtime();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.g.k
 * JD-Core Version:    0.6.2
 */