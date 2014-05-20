package com.tencent.mm.as;

import com.tencent.mm.sdk.platformtools.y;

public final class d
{
  private int code = 0;
  private String info = "";
  public long time = 0L;

  public d(int paramInt, String paramString)
  {
    this.code = paramInt;
    this.info = paramString;
    this.time = System.currentTimeMillis();
  }

  public final byte[] toByteArray()
  {
    if (this.code == 0);
    while (true)
    {
      return null;
      try
      {
        y localy = new y();
        localy.azg();
        localy.bN(this.time);
        localy.lG(this.code);
        localy.sz(this.info);
        byte[] arrayOfByte = localy.azh();
        if (arrayOfByte != null)
        {
          int i = arrayOfByte.length;
          if (i <= 128)
            return arrayOfByte;
        }
      }
      catch (Exception localException)
      {
      }
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.as.d
 * JD-Core Version:    0.6.2
 */