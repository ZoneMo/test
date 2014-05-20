package com.tencent.mm.modelstat;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class c
{
  boolean cpI;
  long cyD;
  long cyE;
  long cyF;
  long cyG;
  long endTime;
  int rtType;

  public c()
  {
  }

  public c(int paramInt, boolean paramBoolean, long paramLong)
  {
    this.rtType = paramInt;
    this.cpI = paramBoolean;
    this.cyE = paramLong;
    this.cyF = 0L;
  }

  public final void CN()
  {
    if (this.cyF == 0L)
    {
      this.cyD = cj.FD();
      this.cyG = cj.FE();
    }
    this.cyF = (1L + this.cyF);
  }

  public final void F(long paramLong)
  {
    if (this.cyE == 0L)
      this.cyE = paramLong;
    this.cyG = (cj.FE() - this.cyG);
    this.endTime = cj.FD();
    aa.d("MicroMsg.MultiSceneStat", "FIN: TIME:" + (this.endTime - this.cyD) + " datalen:" + this.cyE + " Count:" + this.cyF + " type:" + this.rtType);
    WatchDogPushReceiver.a(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.c
 * JD-Core Version:    0.6.2
 */