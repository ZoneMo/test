package com.tencent.mm.platformtools;

import com.tencent.mm.sdk.platformtools.aa;

public final class m
{
  private final long cGp = 420000L;
  private final int cGq = 3;
  private long cGr = 0L;
  private int cGs = this.cGq;

  public final boolean get()
  {
    if (au.O(this.cGr) < this.cGp)
    {
      aa.i("MicroMsg.FrequncyLimiter", "frequency limited, last=" + this.cGr + ", cur=" + au.FE() + ", retries=" + this.cGs);
      if (this.cGs <= 0)
        return false;
    }
    for (this.cGs = (-1 + this.cGs); ; this.cGs = this.cGq)
    {
      this.cGr = au.FE();
      return true;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.m
 * JD-Core Version:    0.6.2
 */