package com.tencent.mm.model;

import com.tencent.mm.sdk.platformtools.aa;

public abstract class aj
{
  private long cic = 0L;

  public abstract boolean cn(int paramInt);

  public final void co(int paramInt)
  {
    long l = System.currentTimeMillis();
    transfer(paramInt);
    this.cic = (System.currentTimeMillis() - l);
    aa.d("MicroMsg.DataTransferBase", "doTransfer, timeConsumed = " + this.cic + ", tag = " + getTag());
  }

  public abstract String getTag();

  public abstract void transfer(int paramInt);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.aj
 * JD-Core Version:    0.6.2
 */