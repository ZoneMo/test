package com.tencent.mm.compatible.e;

import com.tencent.mm.sdk.platformtools.aa;

public final class a
{
  private String cfs = null;
  private long cft = -1L;
  private int cfu = -1;
  private int cfv = -1;

  public final void bE(int paramInt)
  {
    this.cfu = paramInt;
  }

  public final void bF(int paramInt)
  {
    this.cfv = paramInt;
  }

  public final void bl(String paramString)
  {
    this.cfs = paramString;
  }

  public final void l(long paramLong)
  {
    this.cft = paramLong;
  }

  public final String qb()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(this.cfs);
    localStringBuffer.append(",");
    localStringBuffer.append(this.cft);
    localStringBuffer.append(",");
    localStringBuffer.append(this.cfu);
    localStringBuffer.append(",");
    localStringBuffer.append(this.cfv);
    aa.d("MicroMsg.AudioRecorderInfo", " getStatInfo " + localStringBuffer.toString());
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.e.a
 * JD-Core Version:    0.6.2
 */