package com.tencent.mm.network.a;

public final class b
{
  public int bLI = 0;
  public int bLJ = 0;
  public String cEu;
  public long cFJ = 0L;
  public f cFK;
  public boolean cFL = false;
  public int cFM = 0;
  public long cFN = 0L;
  public long cFO = 0L;
  public long cFP = 0L;
  public int cFQ = 0;
  public int cFR = 0;
  public int cFS = 0;
  public long cFT = 0L;
  public long cFU = 0L;
  public long cFV = 0L;
  public long cFW = 0L;
  public long cFX = 0L;
  public String cFY = "";
  public long cFZ = 0L;
  public long cyD = 0L;
  public long cyG = 0L;
  public long endTime = 0L;

  public final String toString()
  {
    Object[] arrayOfObject = new Object[13];
    arrayOfObject[0] = Long.valueOf(this.cFJ);
    arrayOfObject[1] = Long.valueOf(this.cyD);
    arrayOfObject[2] = Long.valueOf(this.endTime);
    arrayOfObject[3] = Long.valueOf(this.endTime - this.cyD);
    arrayOfObject[4] = Long.valueOf(this.cyG);
    arrayOfObject[5] = Long.valueOf(this.cFP);
    if (this.cFK == null);
    for (String str = "null"; ; str = this.cFK.toString())
    {
      arrayOfObject[6] = str;
      arrayOfObject[7] = Boolean.valueOf(this.cFL);
      arrayOfObject[8] = Integer.valueOf(this.cFM);
      arrayOfObject[9] = Integer.valueOf(this.bLI);
      arrayOfObject[10] = Integer.valueOf(this.bLJ);
      arrayOfObject[11] = Long.valueOf(this.cFN);
      arrayOfObject[12] = Long.valueOf(this.cFO);
      return String.format("rtType:%d begin:%d, end:%d time:%d cost:%d count:%d ipInfo:%s socket:%b netType:%d err:(%d,%d) tx:%d rx:%d", arrayOfObject);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.a.b
 * JD-Core Version:    0.6.2
 */