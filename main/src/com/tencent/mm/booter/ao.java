package com.tencent.mm.booter;

import com.tencent.mm.sdk.platformtools.aa;

final class ao
{
  int caI;
  int caJ = 1;
  int caK;
  int caL;
  int caM;

  public final boolean ba(String paramString)
  {
    String[] arrayOfString = paramString.split(",");
    if ((arrayOfString == null) || (arrayOfString.length != 5))
    {
      aa.e("MicroMsg.ProcessReport", "error format");
      return false;
    }
    try
    {
      this.caI = Integer.parseInt(arrayOfString[0]);
      this.caJ = Integer.parseInt(arrayOfString[1]);
      this.caK = Integer.parseInt(arrayOfString[2]);
      this.caL = Integer.parseInt(arrayOfString[3]);
      this.caM = Integer.parseInt(arrayOfString[4]);
      return true;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.ProcessReport", "ParseFrom parse failed");
    }
    return false;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = Integer.valueOf(this.caI);
    arrayOfObject[1] = Integer.valueOf(this.caJ);
    arrayOfObject[2] = Integer.valueOf(this.caK);
    arrayOfObject[3] = Integer.valueOf(this.caL);
    arrayOfObject[4] = Integer.valueOf(this.caM);
    return String.format("%d,%d,%d,%d,%d", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.ao
 * JD-Core Version:    0.6.2
 */